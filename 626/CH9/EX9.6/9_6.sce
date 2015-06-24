clear;
clc;
close;
disp("Example 9.6")
T0=288 //in K
p0=100 //in kPa
Tt3=800 //in K
gm=1.4
Cpc=1.0045 //kJ/Kg.K
pc=25
ec=0.9
Tt4=2000 //in K
gmc=1.33
Cpg=1.188 //kJ/Kg.K
Stg=0.005 //Gas-side Stanton no.
Taw=2000 //in K
ptg=2.5 //in Mpa
Tawd=1200 // desired temp. in K
d=2 //thickness of internally cooled wall in mm
bms=2 //blade mean solidity in HPT
kw=14.9 //in W/m.K
Twc=870 //in K
S=1/2 //S=Stc/Stg
e=(Cpc/Cpg)*S*(Twc-Tt3)/(Tt4-Tawd)
disp(e,"Cooling fraction :")
