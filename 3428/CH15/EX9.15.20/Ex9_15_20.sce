//Section-9,Example-3,Page no.-E.32
//To determine whether the concentrations of two solutions becomes smaller or larger.
clc;
C_1=0.15
C_2=1
E0_cell=0.000
n=2
E_cell=E0_cell-(0.0591/n)*(log10((C_2)/(C_1)))
disp(E_cell,'Emf of cell')
//since E_cell is -ve,the cell discharges to the left direction.
