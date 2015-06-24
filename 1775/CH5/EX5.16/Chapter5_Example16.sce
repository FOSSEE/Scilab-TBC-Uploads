//Chapter-5, Illustration 16, Page 265
//Title: Air Compressors
//=============================================================================
clc
clear

//INPUT DATA
N=220;//Speed of compressor in rpm
P1=1;//Pressure entering LP cylinder in bar
T1=300;//Temperature at point 1 in K
Dlp=0.36;//Bore of LP cylinder in m
Llp=0.4;//Stroke of LP cylinder in m
Lhp=0.4;//Stoke of HP cylinder in m
C=0.04;//Ratio of clearance volumes of both cylinders
P2=4;//Pressure leaving LP cylinder in bar
P5=3.8;//Pressure entering HP cylinder in bar
T3=300;//Temperature entering HP cylinder in K
P6=15.2;//Dicharge pressure in bar
n=1.3;//Adiabatic gas constant
Cp=1.0035;//Specific heat at constant pressure in kJ/kg-K
R=0.287;//Universal gas constant in kJ/kg-K
T5=T1;//Temperature at point 5 in K

//CALCULATIONS
x=(n-1)/n;//Ratio
Vslp=(3.147*(Dlp^2)*Llp*N*2)/4;//Swept volume of LP cylinder in m^3/min
nv=1+C-(C*((P2/P1)^(1/n)));//Volumetric efficiency
V1=nv*Vslp;//Volume of air drawn at point 1 in (m^3)/min
m=(P1*100*V1)/(R*T1);//Mass of air in kg/min
T2=T1*((P2/P1)^x);//Temperature at point 2 in K
QR=m*Cp*(T2-T5);//Heat rejected in kJ/min
V5=(m*R*T5)/(P5*100);//Volume of air drawn in HP cylinder M^3/min
Plp=P2/P1;//Pressure ratio of LP cylinder
Php=P6/P5;//Pressure ratio of HP cylinder
Vshp=V5/nv;//Swept volume of HP cylinder in m^3/min
Dhp=sqrt((Vshp*4)/(3.147*Lhp*N*2));//Bore of HP cylinder in m
P=(m*R*(T2-T1))/(x*60);//Power required for HP cylinder in kW

//OUTPUT
mprintf('Heat rejected in intercooler is %3.1f kJ/min \n Diameter of HP cylinder is %3.4f m \n Power required for HP cylinder is %3.0f kW',QR,Dhp,P)









//==============================END OF PROGRAM=================================
