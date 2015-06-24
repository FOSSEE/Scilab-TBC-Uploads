clear all; clc;

disp("Scilab Code Ex 13.11 : ")

//Given:
P = 20*10^3; //N
y1 = 150; //mm
x1 = 40; //mm
A = (x1*y1);
d = 40;
K = 1;

//Eqn 13.29

L2 = (3718*A*d^2)/(P);
L = sqrt(L2);
KL_d = (K*L)/(d);

if(KL_d>26 & KL_d<=50)
     printf('\n\nThe greatest allowable length L as specified by the NFPA  = %1.0f mm',L);
   
end 

//------------------------------------------------------------------------END----------------------------------------------------------------------------- 

