//Chapter-9,Example 3,Page 220
clc();
close();

R= 4364   //resistance of the cell

K= 2.767*10^-3   //specific conductivity

C_constant= R*K   //cell constant


//cell constant= l/a = R/p
R1 = 3050   //new resistance

p= R1/C_constant

printf('the specific resistance is %.3f ohm.cm ',p)
