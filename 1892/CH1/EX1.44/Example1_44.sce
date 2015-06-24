// Example 1.44

clear; clc; close;

format('v',6);
// Given data
Zouter=0.05+%i*0.10;//in ohm
Zinner=0.01+%i*0.60;//in ohm
S=3;//in %

//Calculations
R2o=real(Zouter);//in ohm
R2i=real(Zinner);//in ohm
X2o=imag(Zouter);//in ohm
X2i=imag(Zinner);//in ohm
S=S/100;//slip
//Formula : T=3/2/%pi/ns*(S*E2^2*R2/(R2^2+(S*X2)^2))
S=1;//at starting
TouterByTinner=R2o/R2i*(R2i^2+X2i^2)/(R2o^2+X2o^2);//
disp(TouterByTinner,"(i) Ratio of torque due to two cages at starting : ");
S=3/100;//Slip at running
TouterByTinner=R2o/R2i*(R2i^2+(S*X2i)^2)/(R2o^2+(S*X2o)^2);//
disp(TouterByTinner,"(ii) Ratio of torque due to two cages when running at 3% slip : ");
