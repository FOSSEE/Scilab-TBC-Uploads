//Chapter-10,Example 5,Page 253
clc();
close();

E0_Zn=-0.76   

E0_Ag=0.8   

E0_cell=E0_Ag-E0_Zn

printf('\n  the cell reaction is')
printf('\n  2Ag+ + Zn <----> 2Ag + Zn+2')
printf('\n  the e.m.f. of cell is %.4f V',E0_cell)

