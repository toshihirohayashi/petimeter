#! /bin/bash

cd testdata/petimeter



echo Running petimeter. Test prefix is 't'.
python2.7 ../../petimeter -t 0.98 -n t1 t1 t1_contigs.fa t1_cdna.fa t1.gff 
python2.7 ../../petimeter -t 0.98 -n t2 t2 t1_contigs.fa t1_cdna.fa t1.gff 
echo -e "\n\n\n"


echo "--- Info ---" 
python2.7 ../../petimeter_info t1_assessment.json
echo -e "\n\n\n"

echo "--- Simple table ---" 
python2.7 ../../petimeter_table t1_assessment.json 
echo -e "\n\n\n"



echo "--- Agreement ---" 
python2.7 ../../petimeter_agreement  t1_details.json t2_details.json 
echo 
python2.7 ../../petimeter_agreement -u t1_details.json t2_details.json
echo 
python2.7 ../../petimeter_agreement -c t1_details.json t2_details.json 
echo -e "\n\n\n"



echo "--- Venn with COVER_THRESHOLD = 0.95---"
python2.7 ../../petimeter_venn -t 0.95 t1_details.json t2_details.json
echo "--- Venn with COVER_THRESHOLD = 1.00---"
python2.7 ../../petimeter_venn -t 1.00 t1_details.json t2_details.json
echo "--- Venn intersection ---"
python2.7 ../../petimeter_venn -i -t 0.95 t1_details.json t2_details.json
echo -e "\n\n\n"


echo "--- Genes with COVER_THRESHOLD = 0.95----"
python2.7 ../../petimeter_genes -t 0.95 t1_details.json t2_details.json
echo "--- Genes with COVER_THRESHOLD = 1.00----"
python2.7 ../../petimeter_genes -t 1.00 t1_details.json t2_details.json
echo -e "\n\n\n"



echo "--- Producing plots ---"
python2.7 ../../petimeter_plot testplot t_details.json t2_details.json t3_details.json
python2.7 ../../petimeter_compare testcompare t_details.json t2_details.json

