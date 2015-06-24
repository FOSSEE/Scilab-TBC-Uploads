clear;
clc;

//Example9.7[U factor for Center of glass Section of Windows]
//Given:-
e=0.84;//Emissivity
//For winter season
hi=8.29;//[W/m^2.degree Celcius]
ho=34.0;//[W/m^2.degree Celcius]
//Solution:-
e_eff=1/((1/e)+(1/e)-1);//Effective emissivity of air space
//the effective emissivity and an average air space temperature of 0 degree Celcius read 
h_space=7.2;//[W/m^2.degree Celcius]
U_center=1/((1/hi)+(1/ho)+(1/h_space));//[W/m^s.degree Celcius]
disp("W/m^2.degree Celcius",U_center,"The center of glass U-factor value is")
