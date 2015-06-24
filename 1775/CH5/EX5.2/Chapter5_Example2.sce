//Chapter-5, Illustration 2, Page 251
//Title: Air Compressors
//=============================================================================
clc
clear

//INPUT DATA
IP=37;//Indicated power in kW
P1=0.98;//Pressure at entry in bar
T1=288;//Temperature at entry in K
P2=5.8;//Pressure at exit in bar
n=1.2;//Adiabatic gas constant
N=100;//Speed in rpm
Ps=151.5;//Piston speed in m/min
a=2;//For double acting compressor

//CALCULATIONS
L=Ps/(2*N);//Stroke length in m
x=(n-1)/n;//Ratio
r=(3.147*L)/4;//Ratio of volume to bore
D=sqrt((IP*1000*60*x)/(N*a*r*P1*(10^5)*(((P2/P1)^x)-1)));//Cylinder diameter in m

//OUTPUT
mprintf('Stroke length of cylinder is %3.4f m \n Cylinder diameter is %3.4f m',L,D)






//==============================END OF PROGRAM=================================
