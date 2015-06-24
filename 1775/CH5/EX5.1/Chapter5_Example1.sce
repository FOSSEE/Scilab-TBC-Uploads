//Chapter-5, Illustration 1, Page 250
//Title: Air Compressors
//=============================================================================
clc
clear

//INPUT DATA
D=0.2;//Cylinder diameter in m
L=0.3;//Cylinder Stroke in m
P1=1;//Pressure at entry in bar
T1=300;//Temperature at entry in K
P2=8;//Pressure at exit in bar
n=1.25;//Adiabatic gas constant
N=100;//Speed in rpm
R=287;//Universal gas constant in J/kg-K

//CALCULATIONS
x=(n-1)/n;//Ratio
V1=(3.147*L*(D^2))/4;//Volume of cylinder in m^3/cycle
W=(P1*(10^5)*V1*(((P2/P1)^x)-1))/x;//Work done in J/cycle
Pc=(W*100)/(60*1000);//Indicated power of compressor in kW
m=(P1*(10^5)*V1)/(R*T1);//Mass of air delivered in kg/cycle
md=m*N;//Mass delivered per minute in kg
T2=T1*((P2/P1)^x);//Temperature of air delivered in K

//OUTPUT
mprintf('Indicated power of compressor is %3.2f kW \n Mass of air delivered by compressor per minute is %3.2f kg \n Temperature of air delivered is %3.1fK',Pc,md,T2)




//==============================END OF PROGRAM=================================
