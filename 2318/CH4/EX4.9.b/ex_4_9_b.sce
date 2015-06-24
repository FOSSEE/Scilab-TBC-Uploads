//Example 4.9.b:resolution
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
trn=11;//turns
slwr=rsw/trn;//ohm
vd=slwr*i;//V
dv=100;//divisions
vedv=(1/dv)*vd;//
rs=vedv/5;//
disp(rs*10^6,"resolution of the instrument is,(micro-V)=")
