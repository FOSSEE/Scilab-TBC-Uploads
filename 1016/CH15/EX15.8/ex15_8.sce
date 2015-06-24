clc;clear;
//Example 15.8

//given data
OP=32824;//o/p power in kW
E=200;//energy released per fission in MeV
Ekg=8.2*10^13;//energy released per kg of U-235

//calculations
DOP=OP*1000*24*3600;//daily o/p power in J
IP=DOP/0.2;
DFC=IP/Ekg;//daily fuel cosumption
disp(DFC,'daily fuel cosumption in kg');
DI=DOP/(0.8*4186);//daily input at 80% efficiency
Crqd=DI/(7*10^3);
disp(Crqd,'Coal reqd/day in tonnes')