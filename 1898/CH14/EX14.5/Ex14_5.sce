clear all; clc;

disp("Scilab Code Ex 14.5 : ")

//Given:
G = 75*10^9; //N/m^2
ro = 80/1000; //m
t = 15/1000; //m
ri = ro - t;
l1 = 750/1000; //m
l2 = 300/1000; //m
T1 = 40; //Nm
T2 =15; //Nm

//Calculations:

J = (%pi/2)*(ro^4 - ri^4);

//Eqn 14-22
U1 = (T1^2*l1)/(2*G*J); 
U2 = (T2^2*l2)/(2*G*J);
Ui = U1 + U2;
Ui = Ui*10^6; //in micro Joule

//Display:

   printf('\n\nThe strain energy stored in the shaft    = %1.0fX10^-6 J',Ui);
    
//-------------------------------------------------------------------------END-------------------------------------------------------------------------------------------
    
