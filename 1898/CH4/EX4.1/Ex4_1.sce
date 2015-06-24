clear all; clc;

disp("Scilab Code Ex 4.1 : ")

//Given:
a_ab = 600; //mm^2
a_bd = 1200; //mm^2
a_bc = a_bd;
p = 75; //kN
l_ab = 1; //m
l_bc = 0.75; //m
l_cd = 0.5; //m

//Calculations:

//Internal Forces: By method of Sections
P_bc = 35; //kN
P_cd = 45;//kN

//Displacement:
E_st = 210*(10^3); //From the tables

P = [p P_bc -P_cd];
A =[a_ab a_bc a_bd];
L= [l_ab l_bc l_cd];
E = []
n = length(P)

delta_sum =0;

for i = 1:n;
    delta_sum = delta_sum + (P(i)*L(i)*(10^6))/(A(i)*E_st);
end

delta_bc = (P_bc*l_bc*10^6)/(a_bc*E_st);



//Display:

printf("\n\nThe vertical displacement of end A     = +%1.2f mm",delta_sum);
printf("\nThe displacement of B relative to C is = +%1.3f mm",delta_bc);

//------------------------------------------------------------------------END----------------------------------------------------------------------------------




