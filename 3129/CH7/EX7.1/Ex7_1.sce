//Finding the Critical Values of dv/dt for a thyristor
//Example 7.1(Page No- 311)
clc
clear
//given data
C_j2 = 20*10^-12;//F
i_j2 = 16*10^-3;//A
//d(C_j2)_dt = 0
//let dv/dt = dv;
dv = i_j2/C_j2 ; // dv/dt = i_j2/C_j2

printf('The critical value of dv/dt is %d V/micro s',dv*10^-6);

