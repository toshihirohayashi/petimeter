# Petimeter: a tool for assessing assembly quality based on cDNA mappings

The idea is to take full length cDNA from a closely related species
and count how many of them are found in the assembly. This can be done
easily, but Petimeter also helps with gathering statistics on
predicted UTRs and distance from (projected) gene to contig/scaffold
edges, see Program List below.

The main output file is humanly readable, but it can also be used by
the auxiliary petimeter_table to reformat into a tabular format (TXT, CSV, HTML,
LaTeX). Simple plots are created by petimeter_plot. Both these
tools can take petimeter output from several competing assemblies to
enable comparative presentations.

## Program List

- **petimeter**: Collect information from assembly, cDNA sequences,
and cDNA-to-assembly mapping. See below for more details.

- **petimeter_table**: Give a consise summary of one or several *assessment* files from
petimeter.

- **petimeter_plot**: Take one or several *details* files and
  visualise results in some plots.

- **petimeter_compare**: Take two *details* files and make a scatter
  plot of the agreement.

- **petimeter_agreement**: Take  two or more
  *details* files and output a matrix of agreement. The agreement can
  be measured as number of shared genes, the correlation between
  mapping extents, or (somewhat contradictory) the number of unique
  genes an assembly has in comparison to others.

- **petimeter_venn**: Use two or more *details* files and compute Venn
  diagram information. No graphics is produced, but you get all the
  numbers you need for drawing it yourself.

- **petimeter_genes**: Output the cDNA accessions passing the
  threshold (adjustable) to be classified as "full gene", from one or
  more *details* files.

All programs have proper command-line parsing, so use the flag '-h' to
get basic usage-information.

## Petimeter

### Input
- A prefix for output file names
- Assembly file in Fasta format
- cDNA file in Fasta format
- A GFF file 

### Output
- A general assessment file 
- A "details" file with quantitative data for plotting etc.

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

"Bara en petimeter kräver att 'petimeter' stavas 'petimäter'."

