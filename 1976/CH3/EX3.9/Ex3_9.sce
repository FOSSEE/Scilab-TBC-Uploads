
//To Determine the location and magnitude of minimum voltage
//Page 114
clc;
clear;

Vs=220; //Supply Voltage at End A and B
//Different Conductor Lenghts
//From End A
L1=100;
L2=50;
L3=50;
L4=400; //Length of uniform loading

A=0.5; //Uniforming loading spread over 400m
r=0.05; // Resistance of Conductor per Km
//Different Currents drawn by various loads
I1=50;
I2=75;
I3=A*L4;

//Taking moments of all currents at A;
Ib=((I1*L1)+((L1+L2)*I2)+((L1+L2+L3+(L4/2))*I3))/(L1+L2+L3+L4);
Ia=I1+I2+I3-Ib;

//Minimum Potential Point in this case is the point where All the current from B is drawn
X=Ib/A; // Distance from B;
Y=(L1+L2+L3+L4)-X; //Distance from A;

//Minimum Potential Drop
Vmind=(2*r/1000)*((Ia*L1)+((Ia-I1)*L2)+((Ia-I1-I2)*L3)+(((Y-L1-L2-L3)*A)*((Y-L1-L2-L3)/2)));

Vmin=Vs-Vmind; //Minimum Potential
printf('The Location of The Minimum Voltage is %g m from side A and its magnitude is %g V\n',Y,Vmin)
