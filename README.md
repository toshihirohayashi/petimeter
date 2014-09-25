# Petimeter: a tool for assessing assembly quality based on cDNA mappings

The idea is to take full length cDNA from a closely related species
and count how many of them are found in the assembly. This can be done
easily, but Petimeter also helps with gathering statistics on
predicted UTRs and distance from (projected) gene to contig/scaffold
edges.

The main output file is humanly readable, but it can also be used by
the auxiliary petimeter_table to reformat into a tabular format (TXT, CSV, HTML,
LaTeX). Simple plots are created by petimeter_plot. Both these
tools can take petimeter output from several competing assemblies to
enable comparative presentations.

## Input
- A prefix for output file names
- Assembly file in Fasta format
- cDNA file in Fasta format
- A GFF file 

## Output
- A general assessment file 
- A file with quantitative data for plotting etc.
The output is in JSON format for easy parsing in most programming
languages. 


## Dependencies
This project is not properly packaged yet, so you have to make sure
you have the right packages installed. Petimeter needs:
- BioPython
- gffutils
- json
- matplotlib
- numpy
- seaborn
- termcolor

Petimeter requires Python version 2.7 or later. Does probably not work
wih 3.0.

---
The word "petimeter" is Swedish for "picky person" and is derived from
the French "petit-maître".

"En petimeter skulle stava 'petimeter' som 'petimäter'."

