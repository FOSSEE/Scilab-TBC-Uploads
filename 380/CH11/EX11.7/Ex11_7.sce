//Caption:Find the rms value of symmetric subtransient and transient currents
//Exa:11.7
clc;
clear;
close;
KVA=71500;//Kilo Volt-Ampere
V_r=13800;//in Volts
X_af=0.57;//in per unit
X_la=0.125;//in per unit
X_lf=0.239;//in per unit
X_ld=0.172;//in per unit
X_ds=X_la+((X_af*X_lf*X_ld)/(X_lf*X_ld+X_af*X_ld+X_af*X_lf));//subtransient reactance(in per unit)
E_phy=1;//generated voltage (in per unit)
I_ds=E_phy/X_ds;//short circuit current (in per unit)
X_d=X_la+((X_af*X_lf)/(X_af+X_lf));//transient reactance (in per unit)
I_d=E_phy/X_d;//transient current (in per unit)
I_rated=KVA*1000/(sqrt(3)*V_r);//in Amperes
I_dsa=I_ds*I_rated;//sub transient current (in Amperes)
disp(I_dsa,'sub-transient current (in Amperes)=');
I_da=I_d*I_rated;//transient current (in Amperes)
disp(I_da,'transient current (in Amperes)=');