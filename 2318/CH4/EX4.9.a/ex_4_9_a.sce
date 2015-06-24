//Example 4.9.a:resistance
clc;
clear;
close;
st=15;//steps
r=5;//ohm
rsw=5.5;//ohm
tr=(st*r)+rsw;//ohm
vr=1.61;//V
i=vr/tr;//A
e2=1.61;//V
e1=2.40;//V
rh=(e1-e2)/i;//ohm 
disp(rh,"resistance is,(ohm)=")
