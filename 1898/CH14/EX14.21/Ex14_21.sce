clear all; clc;

disp("Scilab Code Ex 14.21 : ")

//Given:
I = 125*10^-6; //m^4
E = 200*10^6; //kN/m^2
Rc = 5;//kN
l_ac = 6; //m
l_cb = 4; //m


//Castigliano's Second Theorem:
m = 0.4/9;

x10 = 0;
x11 = l_ac;
I11 = integrate('4.4*(x1^2)','x1',x10,x11);
I12 = integrate('-m*(x1^4)','x1',x10,x11);
I1 = I11 + I12;

x20 = 0;
x21 = l_cb;
I21 = integrate('6*0.6*(x2^2)','x2',x20,x21);
I22 = integrate('18*0.6*(x2)','x2',x20,x21);
I2 = I21+I22;

In = I1 + I2 ;
del_cv = (In)/(E*I);
del_cv = del_cv*1000;


//Display:

    printf('\n\nThe vertical displacement of point C of the steel beam   = %1.1f mm',del_cv);
    
//---------------------------------------------------------------------------END------------------------------------------------------------------------------


