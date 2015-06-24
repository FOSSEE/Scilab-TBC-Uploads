//Example No. 1.1
clc;
clear;
close;
format('v',9);

//Given Data : 
J=12;//journey per hour
Load=5500;//Kg
t_up=1.5;//min
W_cage=500;//Kg
t_down=1.25;//min
h=50;//m
Wb=3000;//Kg(Balance weight)
Eff_hoist=0.8;
Eff_motor=0.85;
g=9.81;//gravity constant
E_upward=(Load+W_cage-Wb)*g*h;//J
E_downward=(Wb-W_cage)*g*h;//J
Edj=E_upward+E_downward;//J(Energy used in double journey)
disp(Edj,"Electrical energy used per journey in J : ");
Ein=Edj/Eff_hoist/Eff_motor;//J or W-s
Ein=Ein/1000/3600;//KWh
Ein_hour=Ein*J;//KWh
disp(Ein_hour,"Electrical energy consumption in one hour in KWh : ");
Rating=E_upward/Eff_hoist/t_up/60;//W
disp(Rating/1000,"Rating of motor in KW : ");
