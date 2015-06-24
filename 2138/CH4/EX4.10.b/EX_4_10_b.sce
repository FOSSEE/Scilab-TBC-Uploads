//Example 4.10.b//total load of power connection
clc;
clear;
close;
V=400;//three phase voltage
lp=50;//no. of light points
lw=60;//wattage of light points
fp=20;//no. of fan points
fw=100;//wattage of fan points
wpp=10;//no. of wall plug points
wppw=60;//wattage of wall plug points
bp=5;//no. of bell points
bpw=40;//wattage of bell points
ppp=8;//power plug points
pppw=500;//wattage of power plug points
lpw=lp*lw;//wattage of 50 lamps
fpw=fp*fw;//wattage of 20 fans
wpppw=wpp*wppw;//wattage of wall plug points
bpww=bp*bpw;//wattage of bell points 
tl=lpw+fpw+wpppw+bpww;//total wattage
ppppw=ppp*pppw;//wattage of power plug points
tw=tl+ppppw;//total wattage
Il=(tl/V);// CURRENT THROUGH LIGHTNING LOAD
Ip=ppppw/V;// current through power load
ttl=Il+Ip;//total load curent
disp(ttl,"total load current in amperes")
