//Example 4.9.c:error
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
ig=0.05;//micro-A
vlt=1.1;//V
ir=50;//ohm
em=((ig*ir));//
disp(em,"error is,(micro-V)")
