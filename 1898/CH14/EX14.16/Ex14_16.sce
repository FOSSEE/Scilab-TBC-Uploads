clear all; clc;

disp("Scilab Code Ex 14.16 : ")

//Given:
I = 175.8*10^-6; //m^4
E = 200*10^6; //kN/m^2
Ra = 1;//kN
l_ab = 3; //m
l_bc = 6; //m


//Virtual Work Equation:
m1 = -1; //*x1
M1 = -2.5; //*x1^3
m2 = -0.5; //*x2

x10 = 0;
x11 = l_ab;
I1 = integrate('m1*M1*(x1^4)','x1',x10,x11);

x20 = 0;
x21 = l_bc;
I2 = integrate('m2*123.75*(x2^2)','x2',x20,x21);

x20 = 0;
x21 = l_bc;
I3 = integrate(' -m2*22.5*(x2^3)','x2',x20,x21);

In = I1 + I2 + I3;
del_A = (In)/(E*I);
del_A = del_A*1000;


//Display:

    printf('\n\nThe displacement of point A of the steel beam   = %1.1f mm',del_A);
    
//---------------------------------------------------------------------------END------------------------------------------------------------------------------


