clear
clc
disp('Ex-14.7');
mpc2=938;   //rest energy of proton
Q=mpc2+mpc2-(4*mpc2);        //Q value of reaction 
Kth=(-Q)*(6*mpc2/(2*mpc2));       // thershold kinetic energy
printf('The threshold kinetic energy is %.2f MeV',Kth);