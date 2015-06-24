
//Example 4.10.a//total load of lights and fans
clc;
clear;
close;
lp=50;//no. of light points
lw=60;//wattage of light points
fp=20;//no. of fan points
fw=100;//wattage of fan points
wpp=10;//no. of wall plug points
wppw=60;//wattage of wall plug points
bp=5;//no. of bell points
bpw=40;//wattage of bell points
ppp=8;//power plug points
pppw=5000;//wattage of power plug points
lpw=lp*lw;//wattage of 50 lamps
fpw=fp*fw;//wattage of 20 fans
wpppw=wpp*wppw;//wattage of wall plug points
bpww=bp*bpw;//wattage of bell points 
tl=lpw+fpw+wpppw+bpww;//total wattage
disp(tl,"total wattage of lightning load is in watts ")
