//Example 5.7: 
clc;
clear;
close;
//given data :
Vcc=15;//in V
Vpeak=24/2;//in V
Rl=100;//in ohm
Ipeak= Vpeak/Rl;//in A
Pdc=Vcc*(2/(%pi))*Ipeak;//in W
pad=(1/2)*(Vpeak^2)/Rl;//in W
pd=Pdc-pad;//in W
pde=pd/2;//in W
disp(pde*10^3,"power dissipated by each transistor is,(mW)=")
