from pymol import cmd, stored

def wtTAR_align(N, selection):
    N = int(N)
    #Align all molecules using selection and color TAR domains
    print("Aligning TAR conformers:")
    ref_name = "ens-1"

    for i in range(2, N+1):
        obj_name = "ens-%d"%i
        cmd.do('align %s & (%s) , %s & (%s)'%(obj_name, selection, ref_name, selection))
    print("TAR conformers aligned!")
    return 1

def wtTAR_apply_color_all(N, selection, color):
    N = int(N)
    #Apply color to ensemble
    for i in range(1, N+1):
        cmd.do('color %s, ens-%d & (%s)'%(color, i, selection))
    return 1

def wtTAR_apply_color_individual(N, selection, color):
    N = int(N)
    #Apply color to conformer
    cmd.do('color %s, ens-%d & (%s)'%(color, N, selection))
    return 1

def setup_pymol():
    #Set up pymol system wide settings
    print("Setting up pymol:")
    cmd.do('set cartoon_ring_mode, 3')
    cmd.do('set ray_opaque_background, off')
    cmd.do('set ray_trace_fog, 0')
    cmd.do('set ray_shadows, 0')
    cmd.do('unset depth_cue')
    cmd.do('bg_color white')
    cmd.do('set antialias, 2')
    cmd.do('set hash_max, 300')
    print("Set up pymol!")
    return

cmd.extend("roy_align", wtTAR_align);
cmd.extend("roy_setup_pymol", setup_pymol);
cmd.extend("roy_apply_color_all", wtTAR_apply_color_all);
cmd.extend("roy_apply_color_individual", wtTAR_apply_color_individual);
