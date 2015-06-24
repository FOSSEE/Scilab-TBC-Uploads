//Section-9,Example-4,Page no.-E.14
//To find the potential of Daniel cell.
clc;
C_Zn=1.52
C_Cu=0.48
E0_cell=1.10
n=2
E_cell=E0_cell-((0.0592/n)*log10(C_Zn/C_Cu))
disp(E_cell,' potential of Daniel cell')
