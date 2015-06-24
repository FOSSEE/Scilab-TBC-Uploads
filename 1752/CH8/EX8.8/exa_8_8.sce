//Exa 8.8
clc;
clear;
close;
//given data
Cp=4180;// in J/kg degree C
miu=0.86*10^-3;// in kg/m-s
Pr=60;
k=0.60;// in W/m degree C
h_fg=2372400;// in W
ho=6000;// in W/m^2 degree C
di=2*10^-2;// in m
d_o=3*10^-2;// in m
t_co=35;// in degree C
t_ci=15;// in degree C

M=0.9;
Re=4*M/(%pi*di*miu);
// since Re > 2300, hence flow inside tube is a turbulent flow.
// Hence  Nu= hi*di/k = 0.023*Re^0.8*Pr^0.4
hi= 0.023*Re^0.8*Pr^0.4*k/di;
Uo= 1/(1/10213.6*(d_o/di)+1/ho);
del_t1=50-15;// in degree C
del_t2=50-35;// in degree C
del_tm=(del_t1-del_t2)/log(del_t1/del_t2);// in degree C
// Formula q= Uo*%pi*d_i*L*del_tm = M*Cp*(t_co-t_ci)
L= M*Cp*(t_co-t_ci)/(Uo*%pi*d_o*del_tm);
disp(L,"Length of tube in meter")
q=M*Cp*(t_co-t_ci);// in watt
m=q/h_fg;
disp(m,"Rate of condensation in kg/sec")