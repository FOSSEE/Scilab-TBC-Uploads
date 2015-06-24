clear all; clc;

disp("Scilab Code Ex 14.11 : ")

//Given:
A = 400*10^-6; //m^2
E = 200*10^6; //kN/m^2
P = 100; //kN

//Virtual Work Equation:

n = [0 0 -1.414 1];
N = [-100 141.4 -141.4 200];
L = [4 2.828 2.828 2];
del_cv = 0;

for i=1:4
    del_cv = del_cv + (n(i)*N(i)*L(i))/(A*E);
end

del_cv = del_cv*1000;

//Display:

    printf('\n\nThe vertical displacement of joint C of the steel truss   = %1.1f mm',del_cv);
    

//---------------------------------------------------------------------------END------------------------------------------------------------------------------


