//Exa 8.1
clc;
clear;
close;
//given data
t_hi=80;// in degree C
t_ci=30;// in degree C
t_ho=40;// in degree C
Mh=0.278;// in kg/s
Mc=0.278;// in kg/s
Cph=2.09; // in kJ/kg degree C
Cpc=4.18;//  in kJ/kg degree C
U=24;// in W/m^2 degree C
// Energy balance Mh*Cph*(t_hi-t_ho) = Mc*Cpc*(t_co-t_ci)
t_co= Mh*Cph*(t_hi-t_ho)/(Mc*Cpc)+t_ci;// in degree C
del_t1=t_hi-t_co;//in degree C
del_t2=t_ho-t_ci;//in degree C
del_tm= (del_t1-del_t2)/log(del_t1/del_t2);
Cph=Cph*10^3;// in J/kg degree C
q=Mh*Cph*(t_hi-t_ho);
//Formula q=U*A*del_tm
A=q/(U*del_tm);// in m^2
disp(A,"Surface area of heat exchange in square meter")
