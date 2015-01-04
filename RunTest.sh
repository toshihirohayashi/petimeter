#! /bin/bash

cd testdata/petimeter
echo Running petimeter. Test prefix is 't'.
../../petimeter -t 0.98 -n t t t1_contigs.fa t1_cdna.fa t1.gff \
&& echo "--- Info ---" \
&& ../../petimeter_info t_assessment.json \
&& echo "--- Simple table ---" \
&& ../../petimeter_table         t_assessment.json \
&& echo "--- Agreement ---" \
&& ../../petimeter_agreement  t_details.json t2_details.json \
&& echo \
&& ../../petimeter_agreement -u t_details.json t2_details.json \
&& echo \
&& ../../petimeter_agreement -c t_details.json t2_details.json \
&& echo "--- Producing plots ---"\
&& ../../petimeter_plot testplot t_details.json t2_details.json t3_details.json

