clear all; clc;

disp("Scilab Code Ex 14.17 : ")

//Given:
E = 210*10^3; //N/mm^2
P = 40*10^3;//N
A_ab = 1250; //mm^2
A_ac = 625; //mm^2
A_cd = 1250; //mm^2
A_bc = 625; //mm^2

N_by_P = [0 0 1.67 -1.33];
L = [4000 3000 5000 4000];
A = [A_ab A_bc A_ac A_cd];
N = zeros(4);
sum = 0;


for i =1:4
    N(i) = N_by_P(i)*P;
    num(i) = N(i)*N_by_P(i)*L(i);
   
end

for i = 1:4
    sum = sum + (num(i)/(A(i)*E)); //By Castigliano's Second theorem.
end

del_ch = sum;

//Display:
    printf('\n\nThe horizontal displacement of joint C of the steel truss   = %1.2f mm',sum);
    
//---------------------------------------------------------------------------END------------------------------------------------------------------------------


