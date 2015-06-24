//Finding the Voltage and Current in an LC circuit 
//Example 2.5 (Page No- 50) 
clc
clear

// part (a)
C = 20 *10^-6; // F
L = 80*10^-6; // H
Vc0 = 220; //V
t=0;
w0 = 1/sqrt(L*C);
Ip = Vc0*(sqrt(C/L));
printf('Peak current through diode : %d A \n', Ip);

// Part (b)
// at t = pi*sqrt(L*C), the diode current becomes zero and hence conduction time is t1
t1 = %pi*sqrt(L*C);
t2=t1*10^6 // to convert into microseconds
printf('condution tme of diode: %3.2f s \n',t2);

//part (c)

t = t1;
Vc = -Vc0*cos(w0*t);
printf('steady state capacotor voltage: %3.1f V',Vc);
