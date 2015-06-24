//pagenumber 372 example 4
clear
ids=4*10^-3;//ampere
vp=4;//volt
r=1.3*10^3//ohm
r1=200*10^3;//ohm
vdd=60;//volt
drares=18*10^3;//ohm
soresi=4*10^3;//ohm
rth=(r*r1)/(r+r1);
vth=r1*(1-vdd)/(1500*10^3);
id=-2.25*10^-3;
vds=-vdd-(drares+soresi)*id;
disp("id   =   "+string(abs(id))+"ampere");
disp("vds   =   "+string(abs(vds))+"volt");
