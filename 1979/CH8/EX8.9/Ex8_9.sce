//chapter-8 page 343 example 8.9
//==============================================================================
clc;
clear;

//For a helical TWT
c=3*10^8;//Velocity of light in m/sec
d=0.002;//diameter in m
x=5000;//no.of turns per m
m=9.1*10^(-31);//mass of an electron in kg
e=1.6*10^(-19);//charge of an electron in C

//CALCULATION
y=(%pi)*d;//circumference in m
p=1/x;//pitch in m
Vp=(c*p)/y;//Axial phase velocity in m/sec
V0=((m*Vp^2)/(2*e));//The Anode voltage at which the TWT can be operated for useful gain in V

//OUTPUT
mprintf('\nAxial phase velocity is Vp=%6.2f m/sec \nThe Anode voltage at which the TWT can be operated for useful gain is V0=%2.2f V',Vp,V0);

//=========================END OF PROGRAM===============================
