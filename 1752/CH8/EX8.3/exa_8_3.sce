//Exa 8.3
clc;
clear;
close;
//given data
t_hi=110;// in degree C
t_ci=35;// in degree C
t_co=75;// in degree C
Mh=2.5;// in kg/s
Mc=1;// in kg/s
Cph=1.9; // in kJ/kg K
Cpc=4.18;//  in kJ/kg K
U=300;// in W/m^2 K

// Energy balance Mc*Cpc*(t_co-t_ci) = Mh*Cph*(t_hi-t_ho)
t_ho=t_hi- Mc*Cpc*(t_co-t_ci)/(Mh*Cph);// in degree C
del_t1=t_hi-t_co;//in degree C
del_t2=t_ho-t_ci;//in degree C
del_tm= (del_t1-del_t2)/log(del_t1/del_t2);
Cph=Cph*10^3;// in J/kg degree C
q=Mh*Cph*(t_hi-t_ho);
//Formula q=U*A*del_tm
A=q/(U*del_tm);
disp(A,"Area of the heat exchanger in square meter")
