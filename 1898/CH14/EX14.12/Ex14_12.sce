clear all; clc;

disp("Scilab Code Ex 14.12 : ")

//Given:
A = 300*10^-6; //m^2
E = 210*10^6; //kN/m^2
P = 60; //kN
F_ac = 1.25; //kN

//Part a:

//Virtual Work Equation:

n = [0 1.25 0 -0.75];
N = [0 75 -60 -45];
L = [1.5 2.5 2 1.5];
del_ch = 0;

for i=1:4
    del_ch = del_ch + (n(i)*N(i)*L(i))/(A*E);
end

del_chA = del_ch*1000;

//Part b:

del_L = -6; //mm
del_chB = F_ac*del_L;

if(del_chB<0)
    

//Display:
   
    printf('\n\nThe horizontal displacement of joint C if a force is applied to B   = %1.3f mm',del_chA);
    printf('\nThe horizontal displacement of joint C if AC is fabricated short    = %1.1f mm',del_chB);
end

    

//---------------------------------------------------------------------------END------------------------------------------------------------------------------

