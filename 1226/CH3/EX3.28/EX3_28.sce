clc;funcprot(0);//EXAMPLE 3.28
// Initialisation of Variables
t1=373;.............//Initial temperature in K
p1=1;...............//Initial pressure in bar
p3=65;..............//Maximum pressure in bar
R=287;.................//Gas constant in kJ/kg
p4=p3;
ga=1.41;.................//Ratio of specific heats
Vs=0.0085;............//Swept volume in m^3
afr=21;...............//Air fuel ratio
r=15;.................//Compression ratio
C=43890;..............//Calorific value of fuel in kJ/kg
cp=1;................//Specific heat at constant pressure in kJ/kgK
cv=0.71;..............//Specific heat at constant volume in kJ/kgK
//Calculations
Vc=Vs/(r-1);...............//Clearance volume in m^3
v2=Vc;v1=Vs+v2;
v3=Vc;v5=v1;
p2=p1*(r^ga);.....................//Pressure at the end of adiabatic compression in bar
t2=t1*(r^(ga-1));................//Temperature at the end of adiabatic compression in K
t3=(t2*p3)/p2;...................//Temperature at the end of isochoric compression in K
m=(p1*v1*10^5)/(R*t1);............//Mass of air in the cycle in kg
Qv=m*cv*(t3-t2);.....................//Heat added during constant volume process in kJ
fv=Qv/C;.............................//Fuel added during constant volume process in kg
mf=m/afr;..................//Total amount of fuel added in kg
mfib=mf-fv;....................//Total amount of fuel added in isobaric process in kg
Qib=mfib*C;....................//Total amount of heat added in isobaric process in kJ
t4=(Qib/((m+mf)*cp))+t3;........//Temperature at the end of isobaric process in K
v4=(v3*t4)/t3;..................//Volume at the end of isobaric process in m^3
t5=t4/((v5/v4)^(ga-1));.........//Temperature at the end of isochoric expansion in K
Qrv=(m+mf)*cv*(t5-t1);...............//Heat rejected during constant volume process in kJ
W=(Qib+Qv)-Qrv;................//Work done in kJ
etath=W/(Qib+Qv);..................//Thermal efficiency
disp(etath*100,"Thermal efficiency in %:")

