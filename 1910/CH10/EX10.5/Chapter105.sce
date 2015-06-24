// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 10, Example 5")
//Water is heated from temprature ,Tin=30°C  to Tout=90°C  in a counter flow double pipe heat exchanger.
Tin=30;
Tout=90;
//Water flows at a mass flow rate of mdotw=1.2kg/s
mdotw=1.2;
//The heating is accomplished by a geothermal fluid which enters the heat exchanger at temprature ,Thin=160°C at the mass flow rate of mdoth=2kg/s
mdoth=2;
Thin=160;
//The inner tube is thin walled having diameter(D)=15mm or 0.015m
D=0.015;
//overall heat transfer coefficient(U)=600 W/(m^2*K)
U=600;
//The specific heat of water and geothermal fluid is (cpw=4.18kJ/(kg*K))and(cph=4.31kJ/(kg*K)) respectively
cpw=4.18*10^3;
cph=4.31*10^3;
//The rate of heat transfer in heat exchanger can be calculate as Q=mdotw*cpw*(Tout-Tin)
disp("(a)Applying LMTD method")
disp("The rate of heat transfer Q=mdotw*cpw*(Tout-Tin) in W")
Q=mdotw*cpw*(Tout-Tin)
//The unknown outlet temprature(Thout) of geothermal fluid may be found from energy balance mdotw*cpw*(Tout-Tin)=mdoth*cph*(Thin-Thout)
disp("The unknown outlet temprature(Thout) of geothermal fluid  in °C ")
Thout=Thin-Q/(mdoth*cph)
deltaT1=Thin-Tout;//Temprature difference between inlet temprature of hot fluid and outlet temprature of cold fluid
deltaT2=Thout-Tin;//Temprature difference between outlet temprature of hot fluid and inlet temprature of cold fluid
//LMTD is defined as (deltaT2-deltaT1)/(ln(deltaT2/deltaT1)) for counter flow.
disp("LMTD is given by (deltaT2-deltaT1)/(ln(deltaT2/deltaT1)) in °C ")
//let X=log10((deltaT2/deltaT1))and Y=log10(2.718281)
X=log10((deltaT2/deltaT1));
Y=log10(2.718281);
ln=X/Y;
LMTD=(deltaT2-deltaT1)/ln
//Area(A)=Q/(U*LMTD) in m^2
disp("Area(A)=Q/(U*LMTD) in m^2")
A=Q/(U*LMTD)
disp("To provide this surface area ,The length(L) of the tube required is given by L=A/(pi*D) in m")
L=A/(%pi*D)
disp("(b)Applying NTU method")
//The heat capacity rates are defined as Ch=mdoth*cph and Cc=mdotw*cw in KW/°C
disp("The heat capacity rates are defined as Ch=mdoth*cph and Cc=mdotw*cpw in KW/°C")
Ch=(mdoth*cph)/1000
Cc=(mdotw*cpw)/1000
//So Cmin=Cc and Cmax=Ch
Cmin=Cc;
Cmax=Ch;
//C is defined as Cmin/Cmax
disp("C=Cmin/Cmax")
C=Cmin/Cmax
//Heat transfer effectiveness is (eff)
disp("Heat transfer effectiveness is defined as eff=Q/(Cmin*(Thin-Tin))")
eff=(Q/1000)/(Cmin*(Thin-Tin))
disp("NTU is determined by NTU=(1/(C-1))*ln((eff-1)/(eff*C-1))")
//let X=log10((eff-1)/(eff*C-1)) and Y=log10(2.718281)
X=log10((eff-1)/(eff*C-1));
Y=log10(2.718281);
//ln=ln[(eff-1)/(eff*C-1)]
ln=X/Y;
//NTU is Number of transfer units
NTU=(1/(C-1))*ln
//NTU =U*A/Cmin
disp("Area(A)=(NTU*Cmin)/U in m^2")
A=(NTU*Cmin*1000)/U
disp("To provide this surface area ,The length(L) of the tube required is given by L=A/(pi*D) in m")
L=A/(%pi*D)
disp("Hence same result is obtained for both methods")


























