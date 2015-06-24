// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 2, Example 10")
//A copper pipe having 35mm outer diameter(Do) and 30mm inner diameter(Di) carries liquid oxygen to the storage site of a space shuttle at temprature,T1=-182°C
//mass flow rate is ,mdot=0.06m^3/min. 
Di=0.03;//in metre
Do=0.035;// in metre
T1=-182;
mdot=0.06;
//The ambient air is at temprature(Ta)=20°C and has a dew point(T3)=10°C.
Ta=20;
T3=10;
//The thermal conductivity(k) of insulating material is 0.02W/(m*k)
k=0.02;
//The convective heat transfer coefficient on the outside is h=17W/(m^2*K)
h=17;
//The thermal conductivity of copper kcu=400W/(m*K)
kcu=400;
//We can write Q=((Ta-T1)/(R1+R2+R3))=((Ta-T3)/(R3)),Rearranging we get ((R1+R2+R3)/(R3))=((Ta-T1)/(Ta-T3))--------eq.1
//The conduction Resistance of copper pipe(R1)=ln(0.035/0.03)/(2*%pi*L*kcu)=3.85*10^-4/(2*%pi*L)K/W
//The conduction resistance of insulating material (R2)=ln(r3/0.035)/(2*%pi*L*k)=(1/(2*%pi*L))((50*ln(r3/0.035)))K/W where r3 is the outer radius of insulation in metres.
//The convective resistance at the outer surface(R3)=1/(2*%pi*L*h*r3)=(1/2*%pi*L)*(mdot/r3)K/W
//Substituting the values in eq.1 we have 1+((50*ln(r3/0.035)+(3.85*10^-4))/(mdot/r3))=20-(-182)/(20-10)
//A rearrangement of the above equation gives r3*ln(r3)+3.35*r3=0.023
//The equation is solved by trial and error method which finally gives r3=0.054m
r3=0.054;//outer radius of insulation
//Therefore the thickness of insulation is given by t=r3-Do
disp("the thickness of insulation in metre is")
t=r3-Do















