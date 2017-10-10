// Exa 2.24
clc;
clear; 
close;
// Given data 
Rsig= 100;// in kΩ
Rsig= Rsig*10^3;// in Ω
R_G= 4.7;// in MΩ
R_G= R_G*10^6;// in Ω
R_D= 15;// in kΩ
R_D= R_D*10^3;// in Ω
R_L= R_D;// in Ω
gm= 1;//in mA/V
gm= gm*10^-3;//in A/V
ro=150;// in kΩ
ro=ro*10^3;// in Ω
Cgs= 1;// in pF
Cgs=Cgs*10^-12;//in F
Cgd= 0.4;// in pF
Cgd=Cgd*10^-12;//in F
vgsBYvsig= R_G/(Rsig+R_G);
Rdesh_L= R_D*R_L/(R_D+R_L);// in Ω
voBYvgs= -gm*Rdesh_L;
Av= voBYvgs/vgsBYvsig;// in V/V
disp(Av,"The Mid-band gain in V/V is :")
CM= Cgd*(1+gm*Rdesh_L);// in F
// f_H= 1/(2*%pi*(Rsig || R_G)*(Cgs*CM))
f_H= 1/(2*%pi*(Rsig * R_G/(Rsig + R_G))*(Cgs+CM));// in Hz
disp(f_H*10^-3,"Frequency in kHz is : ")
