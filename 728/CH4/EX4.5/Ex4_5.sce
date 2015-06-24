//Caption:Calculate charcteristic impedance & effective dielectric constant & velocity of propagation
//Exa:4.5
clc;
clear;
close;
e_r=9.7;
c=3*10^8;//in m/s
r_1=0.5;//when ratio: (W/h)=0.5
r_2=5;//when ratio: (W/h)=5
//For W/h ratio=0.5
e_eff_1=(e_r+1)/2+((e_r-1)/2)*[1/{sqrt(1+12*(1/r_1))+0.04*(1-r_1)}];
Z_o_1=60*log(8/r_1+r_1/4)/sqrt(e_eff_1);
v_1=c/sqrt(e_eff_1);
disp("For W/h=0.5 ,");
disp(e_eff_1,'Effective dielectric constant =');
disp(Z_o_1,'Charcteristic impedance (in ohms) =');
disp(v_1,'Velocity of propagation (in m/s) =');
//For W/h ratio=5
e_eff_2=(e_r+1)/2+((e_r-1)/2)*[1/{sqrt(1+12*(1/r_2))}];
Z_o_2=120*%pi*[1/{r_2+1.393+0.667*log(1.444+r_2)}]/sqrt(e_eff_2);
v_2=c/sqrt(e_eff_2);
disp("For W/h=5,");
disp(e_eff_2,'Effective dielectric constant =');
disp(Z_o_2,'Charcteristic impedance (in ohms) =');
disp(v_2,'Velocity of propagation (in m/s) =');