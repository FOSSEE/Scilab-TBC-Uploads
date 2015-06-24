//pagenumber 376 example 9
clear
v1=2;//volt
ids=4*10^-3;//ampere

rd=910;//ohm
r1=3*10^3;//ohm
r=12*01^6;//ohm
r11=8.57*10^6;//ohm
vdd=24;//volt
vg=vdd*(r11/(r+(r11)));
id=3.39*10^-3;
vgsq=vg-id*r1;
vdsq=vdd-id*(rd+r1);
vdgq=vdsq-vgsq;
disp("point "+string(vdsq)+">"+string(v1)+"volt");
disp("vds greater than 2volt the point in pinch");


