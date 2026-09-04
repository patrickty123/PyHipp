
#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l
echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo "#==============================================="
echo "Start Times"
file=$(ls rplpl-slurm*.out)
echo "==> $file <=="
head -n 1 "$file"

file=$(ls rplspl-slurm*.out)
echo "==> $file <=="
head -n 1 "$file"

echo "End Times"
file=$(ls rplpl-slurm*.out)
echo "==> $file <=="
tail -n 5 "$file"

file=$(ls rplspl-slurm*.out)
echo "==> $file <=="
tail -n 5 "$file"
echo "#============================================="


