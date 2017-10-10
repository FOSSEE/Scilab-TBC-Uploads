//Chapter-4,Example 19,Page 97
clc();
close();

T1= 300   //temperature in Kelvin

T2= 310   //temperature in Kelvin

Kp1=3.49*10^-2    //equilibrium constant

delta_H=-11200

R= 1.987  //gas constant

//from Van't Hoff's Equation

Kp2=Kp1*10^(delta_H*((1/T1)-(1/T2))/(2.303*R))

printf('the value of Kp2 = %.6f/atm ', Kp2)
