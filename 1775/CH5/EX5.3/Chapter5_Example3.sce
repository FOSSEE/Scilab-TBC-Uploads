//Chapter-5, Illustration 3, Page 251
//Title: Air Compressors
//=============================================================================
clc
clear

//INPUT DATA
IP=11;//Indicated power in kW
P1=1;//Pressure at entry in bar
P2=7;//Pressure at exit in bar
n=1.2;//Adiabatic gas constant
Ps=150;//Piston speed in m/s
a=2;//For double acting compressor
r=1.5;//Storke to bore ratio

//CALCULATIONS
x=(n-1)/n;//Ratio
y=3.147/(4*(r^2));//Ratio of volume to the cube of stroke
z=(P1*(10^2)*y*(((P2/P1)^x)-1))/x;//Ratio of workdone to the cube of stroke
L=(sqrt(IP/(z*Ps)))*1000;//Stroke in mm
D=(L/r);//Bore in mm

//OUTPUT
mprintf('Stroke length of cylinder is %3.0f mm \n Bore diameter of cylinder is %3.0f mm',L,D)






//==============================END OF PROGRAM=================================
