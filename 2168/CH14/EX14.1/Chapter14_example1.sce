clc
clear
//Input data
r=14.3//Compression ratio
c=5//Fuel cutoff in percent of stroke
w=0.006//Weight of charge in kg
T4=912//Final temperature in degree C abs
q=8300//Heat in kcal
x=[0.258,0.000048]//Temperature expression is 0.258T+0.000048T^2, where T is in degree C abs

//Calculations
v4=1//Assuming clearance volume as unity
v1=1.665//v1 from fig. 14.2 on page no. 352
T1=(T4*v1)/v4//Temperature in degree C abs
qp1=(x(1)*T1+x(2)*T1^2)//Constant pressure heat of mixture at temperature T1 in kcal/kg
qp4=(x(1)*T4+x(2)*T4^2)//Constant pressure heat of mixture at temperature T4 in kcal/kg
qre=(qp1-qp4)//Heat required by the mixture in kcal/kg
wf=(w*qre)/q//Weight of oil in kg

//Output
printf('The weight of oil that must be injected is %3.6f kg',wf)
