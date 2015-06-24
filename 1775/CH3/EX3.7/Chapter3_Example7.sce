//Chapter-3, Illustration 7, Page 145
//Title: Internal Combustion Engines
//=============================================================================
clc
clear

//INPUT DATA
n=2;//No. of cylinders
N=4000;//speed of engine in rpm
nV=0.77;//Volumetric efficiency
nM=0.75;//Mechanical efficiency
m=10;//fuel consumed in lit/h
g=0.73;//spcific gravity of fuel
Raf=18;//air-fuel ratio
Np=600;//piston speed in m/min
imep=5;//Indicated mean efective pressure in bar
R=281;//Universal gas constant in J/kg-K
T=288;//Standard temperature in K
P=1.013;//Standard pressure in bar

//CALCULATIONS
L=Np/(2*N);//Piston stroke in m
mf=m*g;//mass of fuel in kg/h
ma=mf*Raf;//mass of air required in kg/h
Va=(ma*R*T)/(P*60*(10^5));//volume of air required in (m^3)/min
D=sqrt((2*Va)/(nV*L*N*3.1415));//Diameter in m
IP=(2*imep*100*L*3.1415*(D^2)*N)/(4*60);//Indicated Power in kW
BP=nV*IP;//Brake Power in kW

//OUTPUT
mprintf('Piston Stroke is %3.3f m \n Bore diameter is %3.4f m \n Brake power is %3.1f kW',L,D,BP)



//==============================END OF PROGRAM=================================
