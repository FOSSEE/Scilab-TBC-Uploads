//Exa 2.8
clc;
clear;
close;
//Given data : 
E2=100;//in volt
R2=0.05;//in ohm
X2=0.1;//im ohm
E2perphase=E2/sqrt(3);//in volt
//part (a) : 
S=0.04;//slip
I2=S*E2perphase/sqrt(R2^2+(S*X2)^2);//in Ampere
disp(I2,"At 4% slip, Rotor current in Ampere : ");
fi2=acosd(R2/sqrt(R2^2+(S*X2)^2));//in degree
disp(fi2,"At 4% slip, Phase angle between rotor voltage and rotor current in degree :");
//part (b) : 
S=1;//slip
I2=S*E2perphase/sqrt(R2^2+(S*X2)^2);//in Ampere
disp(I2,"At 100% slip, Rotor current in Ampere : ");
fi2=acosd(R2/sqrt(R2^2+(S*X2)^2));//in degree
disp(fi2,"At 100% slip, Phase angle between rotor voltage and rotor current in degree :");