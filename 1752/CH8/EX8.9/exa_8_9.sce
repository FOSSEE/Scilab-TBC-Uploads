//Exa 8.9
clc;
clear;
close;
//given data
Cph=3850; // in J/kg degree C
t_hi=100;// in degree C
t_ci=20;// in degree C
t_ho=50;// in degree C
Mh=8;// in kg/s
Mc=10;// in kg/s
Cpc=4.18*10^3;//  in J/kg degree C
U=400;// in W/m^2 degree C
// Energy balance Mh*Cph*(t_hi-t_ho) = Mc*Cpc*(t_co-t_ci)
t_co= Mh*Cph*(t_hi-t_ho)/(Mc*Cpc)+t_ci;// in degree C
// Heat load
q=Mh*Cph*(t_hi-t_ho);// in W

// (a) Parallel flow
del_t1=90;// in degree C
del_t2=3.16;// in degree C
del_tm= (del_t1-del_t2)/log(del_t1/del_t2);
A=q/(U*del_tm);
disp(A,"Surface area for parallel flow in meter square");

// (b) Counter flow heat exchanger
del_t1=53.16;// in degree C
del_t2=40;// in degree C
del_tm_counter= (del_t1-del_t2)/log(del_t1/del_t2);
A=q/(U*del_tm_counter);
disp(A,"Surface area for counter flow heat exchanger in meter square");

//(c) One shell pass and two tube pass.
//here
t1=10;// in degree C
t2=46.84;// in degree C
T1=100;// in degree C
T2=50;// in degree C
P=(t2-t1)/(T1-t1);
R=(T1-T2)/(t2-t1);
F=0.88;
del_tm=F*del_tm_counter;// in degree C
A=q/(U*del_tm);
disp(A,"Surface area for one shell pass and two tube pass in meter square");

// (d) For cross flow, correction factor 
F=0.9;
del_tm=F*del_tm_counter;
A=q/(U*del_tm);
disp(A,"Surface area for cross flow in meter square");