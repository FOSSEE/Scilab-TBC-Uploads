//Example 4.14:limit of error,deflection
clc;
clear;
close
x=17.5;//mm/micro-A
r1=850;//ohm
lr=r1*(1/x);//micro V
disp("limit of error in the reading is ±"+string(lr)+" micro-V")
v1=2;//V
r2=80;//
i1=v1/r2;//A
v2=0.1;//V
r3=v2/i1;//ohm
v3=1.43;//V
r4=v3/i1;//ohm
l=50;//cm
l1=2;//mm
r5=((l1/10)/l)*r3;//ohm
fr=r4+r5;//ohm
fr1=22.784;//
R=(fr*fr1)/r2;//ohm
e=i1*fr;//V
ig=(e-v3)/(r1+R);//A
dg=ig*x*10^6;//mm
disp(dg,"deflection of the galvanometer is,(mm)=")
