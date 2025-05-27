#find_homologs.sh

#make variables for each inputs
reference_file="$1"
subject_file="$2"
output_file="$3"

#run blastn & choose only lines which have 100% sequence match and matches reference sequence length and send to output_file
tblastn \
-query $reference_file \
-subject $subject_file \
-outfmt '6 pident length qlen' \
    | awk '$1>30 && $2>0.9*$3' > $output_file


#print number of perfect matches to stdout
wc -l < $output_file




