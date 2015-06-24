//Section-9,Example-2,Page no.-E.5
//To calculate the potential of electrochemical cell at 25 degree celcius.
clc;
E0_cell=-0.34
C_Cu=0.50                 //concentration(Cu/Cu_2+)
P_H2=0.95                  //pressure(H+/H_2)
H=0.01                     //concentration(H+/H_2)
E_cell=E0_cell-((0.0591/2)*log10((C_Cu*P_H2)/H^2))
disp(E_cell,'Potential of cell(V)')
