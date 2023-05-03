fromdir="/mnt/d4_new/rohit/ENS/wtTAR/Unbiased_LowestRMSD_Ensemble/validation/pdb/E0"

for i in {1..18}
do
    cp $fromdir/ens-${i}.pales.pdb pdb/E0
done

mv ens-19.pdb pdb/E0/ens-19.pales.pdb
cp $fromdir/ens-20.pales.pdb pdb/E0
