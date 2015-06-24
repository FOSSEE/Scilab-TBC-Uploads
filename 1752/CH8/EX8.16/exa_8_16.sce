//Exa 8.16
clc;
clear;
close;
//given data
Mh=10000/3600;// in kg/sec
Mc=8000/3600;// in kg/sec
Cph=2095;// in J/kg K
Cpc=4180;// in J/kg K
t_hi=80;// in degree C
t_ci=25;// in degree C
t_ho=50;// in degree C
U=300;// in W/m^2 K
// Energy balance Mh*Cph*(t_hi-t_ho) = Mc*Cpc*(t_co-t_ci)
t_co= Mh*Cph*(t_hi-t_ho)/(Mc*Cpc)+t_ci;// in degree C
del_t1=t_hi-t_co;//in degree C
del_t2=t_ho-t_ci;//in degree C
del_tm= (del_t1-del_t2)/log(del_t1/del_t2);
q=Mh*Cph*(t_hi-t_ho);
//Formula q=U*A*del_tm
A=q/(U*del_tm);// in m^2
disp(A,"Surface area of heat exchange in square meter")
