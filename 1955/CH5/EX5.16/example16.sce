clc
clear
//input data
b1m=46//Rotor blade angle at entry at mean section in degree
b2m=75//Rotor blade angle at exit at mean section in degree
a1m=75//Nozzle angle at exit at mean section in degree
DhDt=0.6//Hub to tip ratio
N=7500//Mean rotor speed in rpm
Dh=0.45//Hub diameter in m

//calculations
R=0.5//Degree of reaction as a1m=b2m
a2m=b1m//Stator angle at exit at mean section in degree
Dm=(Dh+(Dh/DhDt))/2//Mean diameter of turbine at mean section in m
Um=(3.1415*DhDt*N)/60//Mean blade speed in m/s
Ca=Um/(tand(a1m)-tand(b1m))//Axial velocity in m/s
pi=Ca/Um//Flow coefficient
psil=pi*(tand(b1m)+tand(b2m))//Blade loading coefficient
a1h=atand(tand(a1m)*((Dm/2)/(Dh/2)))//Nozzle angle at inlet at root section in degree
Uh=(3.14*Dh*N)/60//Blade speed at root section in m/s
b1h=atand(tand(a1h)-(Uh/Ca))//Rotor blade angle at entry at root section in degree
a2h=atand(tand(a2m)*((Dm/2)/(Dh/2)))//Stator angle at exit at root section in degree
b2h=atand((Uh/Ca)+tand(a2h))//Rotor blade angle at exit at root section in degree
pih=Ca/Uh//Flow coefficient at root section
Rh=(pih/2)*(tand(b2h)-tand(b1h))//Degree of reaction at root section
psilh=pih*(tand(b1h)+tand(b2h))//Blade loading coefficient at root section

//output
printf('Mean section\n    (a)Degree of reaction is %3.1f\n    (b)Blade loading coefficient is %3.2f\nRoot section    (a)Degree of reaction is %3.2f\n    (b)Blade loading coefficient is %3.2f',R,psil,Rh,psilh)
