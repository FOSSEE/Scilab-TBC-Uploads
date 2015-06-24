clc;
//Example 18.4
//page no 229
printf("\n Example 18.4 pageno 229\n\n");
//refer to example 18.3
//applying eq 18.4 for friction loss by globe valve
K_f=22//coeff of expansion loss
v=10//velocity
gc=32.2//ravitational constant
h_f=K_f*v^2/(2*gc)//friction loss due to globe valve
printf("\n friction loss due to globe valve h_f=%f ft.lbf/lb",h_f);
