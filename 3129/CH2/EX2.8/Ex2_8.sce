//Finding the Recovery Energy in an Inductor with feedback Diode
//Example 2.8 (Page No- 62) 
clc
clear
//given data 
Lm = 250*10^-6; //H
N1 = 10;
N2 = 100;
Vs = 220; //V
t1 = 50*10^-6;// s
a= N2/N1;
//part (a)
vd = Vs*(1+a);
printf('Reverse voltage of diode: %d V \n',vd);

//part(b)
I0 = (Vs/Lm)*t1;
printf('Peak value of primary current : %1.1f A \n',I0);

//part (c)
I_0=I0/a; // peak value of secondary current
printf('Peak value of secondary current %1.1f A \n', I_0);

//part(d)
t2 = (a*Lm*I0)/Vs;
t2 = t2*10^6; // to convert into us (microseconds)
printf('conduction time of diode %1.1f us(microseconds) \n',t2);

//part(e)
W = 0.5*Lm*I0^2;
W = W*10^3; // to convert into mJ
printf('Source Energy: %1.1f mJ \n',W);
