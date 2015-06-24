clear all; clc;

disp("Scilab Code Ex 14.18 : ")

//Given:
E = 200*10^6; //kN/m^2
P = 0;//N
A = 400*10^-6; //m^2

N_by_P = [0 0 -1.414 1];
L = [4 2.828 2.828 2];
N = [-100 141.4 -141.4 200];
sum = 0;


for i =1:4
    num(i) = N(i)*N_by_P(i)*L(i); 
end

for i = 1:4
    sum = sum + (num(i)/(A*E)); //By Castigliano's Second theorem.
end

del_ch = sum*1000;

//Display:
  printf('\n\nThe vertical displacement of joint C of the steel truss   = %1.1f mm',del_ch);
    
//---------------------------------------------------------------------------END------------------------------------------------------------------------------


