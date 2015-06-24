clear all; clc;

disp("Scilab Code Ex 14.6 : ")

//Given:
l_ab = 1; //m
l_bc = 2; //m
N_ab = 11.547*1000; //N
Nb = 20*1000; //N
Nc = -23.094*1000; //N
N_ac = -20*1000; //N
A = 100/(1000^2); //mm^2
E = 200*10^9; //N/m^2
P = 20*10^3;//N

//Eqn 14-26
P_by_2 = P/2;
l_ac = sqrt(l_bc^2 - l_ab^2);
del = 0;

N2= [N_ab^2 Nc^2 N_ac^2];
L = [l_ab l_bc l_ac];

for i = 1:3
    del = del + (N2(i)*L(i))/(2*A*E);
end

del_bh = del/P_by_2;
del_bh = del_bh*1000;

//Display:

printf('\n\nThe horizontal displacement at point B   = %1.2fmm',del_bh);
    
//-------------------------------------------------------------------------END-------------------------------------------------------------------------------------------
    
