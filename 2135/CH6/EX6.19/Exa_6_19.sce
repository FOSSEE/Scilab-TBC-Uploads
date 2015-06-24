//Exa 6.19
clc;
clear;
close;
format('v',7);

//Given Data :
m=5;//Kg
p1=10;//bar
x1=0.9;//dry
p2=4;//bar
ts1=179.88;//degree C(at 10 bar)
disp(ts1,"Final condition of steam,(Temperature in degree C) : ");
Vg1=0.1943;//m^3/Kg(at 8 bar)
hf1=762.6;//KJ/Kg(at p=10 bar)
hfg1=2013.6;//KJ/Kg(at p=10 bar)
h1=hf1+x1*hfg1;//KJ/Kg
V1=x1*Vg1;//KJ/kg
u1=h1-p1*V1*10^5/1000;//KJ/Kg
U1=m*u1;//KJ
Tsup2=179.88;//degree C
t11=150;//degree C
h11=2752;//KJ/Kg(at 4bar,150 degree C)
v11=0.471;//m^3/Kg(at 4bar,150 degree C)
s11=6.929;//KJ/KgK(at 4bar,150 degree C)
t22=200;//degree C
h22=2860.4;//KJ/Kg(at 4bar,200 degree C)
v22=0.534;//m^3/Kg(at 4bar,200 degree C)
s22=7.171;//KJ/KgK(at 4bar,200 degree C)
h2=h11+(h22-h11)/(t22-t11)*(ts1-t11);//KJ/Kg
v2=v11+(v22-v11)/(t22-t11)*(ts1-t11);//m^3/Kg
s2=s11+(s22-s11)/(t22-t11)*(ts1-t11);//m^3
u2=h2-p2*10^5*v2/1000;//KJ/Kg
U2=m*u2;//KJ
deltaU=U2-U1;//KJ
disp(deltaU,"Change in internal energy in KJ ; ");
sf1=2.138;//KJ/KgK
sfg1=4.445;//KJ/Kg
s1=(sf1+x1*sfg1);//KJ/KgK
deltaS=m*(s2-s1);//KJ/K
Q=(ts1+273)*(deltaS);//KJ
disp(Q,"Heat transfer in KJ : ");
W=Q-deltaU;//KJ
disp(W,"Workdone in KJ : ");
//Steam table is used to get some data.
//Answer is not accurate in the book.
