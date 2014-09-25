#! /bin/bash

cd testdata/petimeter
echo Running petimeter. Test prefix is 't'.
../../petimeter -n t t t1_contigs.fa t1_cdna.fa t1.gff
echo Simple table
../../petimeter_table         t_assessment.json
echo Producing plots
../../petimeter_plot testplot t_plotdata.json
