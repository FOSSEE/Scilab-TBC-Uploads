clc; clear; close;

col_cap=10;
cell_cap=1;
Vdd=1;
V1=((col_cap*Vdd/2)+(Vdd*cell_cap))/(col_cap+cell_cap);
mprintf('For a stored 1, V= %fVdd\n\n',V1);
V2=(col_cap*Vdd/2)/(col_cap+cell_cap);
mprintf(' For a stored 0, V= %fVdd\n\n',V2);
