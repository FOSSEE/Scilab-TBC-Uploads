clc
clear
//Input data
Vs=0.0045;//Swept volume in m^3
N=4000;//The speed of the engine in rpm 
nv=150;//Overall volumetric efficiency in percent
ni=90;//Isentropic efficiency of the compressor in percent
nm=85;//Mechanical efficiency in percent
T=330;//The temperature of compressed air after cooler in K
p2=1.8;//The pressure of the compressed air in bar
T1=290;//The ambient temperature of air in K
p1=1;//The pressure of the ambient condition in bar
R=287;//The real gas constant in J/kgK
g=1.4;//Adiabatic index
Cp=1.005;//The specific heat of gas in kJ/kgK

//Calculations
T21=T1*(p2/p1)^((g-1)/g);//The temperature at 2' in K
T2=T1+[(T21-T1)/(ni/100)];//The temperature of air after compressor in K
Vs1=Vs*(N/(2*60));//Rate of swept volume in m^3/s
Va=(nv/100)*Vs1;//Volume of air induced in m^3/s
d=(p1*10^5)/(R*T1);//The density of air at ambient condition in kg/m^3
ma=d*Va;//Mass of air induced in kg/s
Q=ma*Cp*(T2-T);//Heat rejected from after cooler in kJ/s
P=ma*Cp*(T2-T1);//Power needed to run the compressor in kW
Pa=P/(nm/100);//Power absorbed from the engine in kW

//Output
printf( '(a) The rate of heat rejected from the after cooler = %3.3f kJ/s \n (b) The power absorbed by the supercharger from the engine = %3.2f kW ',Q,Pa)
