//Exa 8.2
clc;
clear;
close;
//given data
t_hi=160;// in degree C
t_ci=25;// in degree C
t_ho=60;// in degree C
Mh=2;// in kg/s
Mc=2;// in kg/s
Cph=2.035; // in kJ/kg degree C
Cpc=4.187;//  in kJ/kg degree C
U=250;// in W/m^2 K
d=0.5;// in m
// Energy balance Mh*Cph*(t_hi-t_ho) = Mc*Cpc*(t_co-t_ci)
t_co= Mh*Cph*(t_hi-t_ho)/(Mc*Cpc)+t_ci;// in degree C
del_t1=t_hi-t_co;//in degree C
del_t2=t_ho-t_ci;//in degree C
del_tm= (del_t1-del_t2)/log(del_t1/del_t2);


Cph=Cph*10^3;// in J/kg degree C
q=Mh*Cph*(t_hi-t_ho);

//Formula q=U*%pi*d*l*del_tm
l=q/(U*%pi*d*del_tm);
disp(l,"Length of the heat exchanger in meter")
