//Ex_2_13
clc;
clear;
close;
format('v',4);
//given data : 
Ao=5/10000;//m^2(outer limbs)
li=100/100;//m(iron path)
A=10/10000;//m^2
lg=1/1000;//m(airgap)
I1=3;//A
I2=2;//A
N1=100;//turns
N2=50;//turns
mur=2000;//relative permeability
mu0=4*%pi*10^-7;//permeability
mmf=N1*I1-N2*I2;//AT
S=1/(mu0*A)*[li/mur+lg];//AT/Wb
fi=mmf/S*1000;//mWb
disp(fi,"Flux available(mWb)");
