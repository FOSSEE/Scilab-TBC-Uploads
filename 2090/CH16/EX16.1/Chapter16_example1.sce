clc
clear
//Input data
N=3000;//The speed of the engine in rpm 
r=9;//Compression ratio 
l=17.2;//The length of the connecting rod in cm
t=20;//The combustion ends at a TDC in degrees
pi=3.141;//Mathematical constant of pi
k=3;//Three litre spark engine
n=6;//V-6 Engine

//Calculations
Vs=(k/n)*10^-3;//Swept volume per cylinder in m^3
d=[[(Vs*4)/pi]^(1/3)];//The diameter of the bore in m
L=d*100;//The length of the stroke in cm
up=2*d*N/60;//Average piston speed in m/s
Vc=[Vs/(r-1)]*10^6;//Clearence volume in cm^3
cr=(L)/2;//Crank radius in cm
R=l/cr;//The ratio of the connecting rod length to crank radius 
up1=up*[(pi/2)*sin(pi/9)*(1+(cos(pi/9)/(R^2-(sin(pi/9)^2))^(1/2)))];//The piston speed at the end of combustion in m/s
s=(cr*cos(pi/9))+(l^2-(cr^2)*(sin(pi/9))^2)^(1/2);//Distance between crank axis and wrist pin in cm
x=l+cr-s;//The distance the piston travels from TDC at the end of combustion in cm
V=Vc+(pi/4)*(d*100)^2*x;//Instantaneous volume in cm^3

//Output 
printf('(a)The cylinder bore and The stroke length (d = L) = %3.1f cm \n (b) The average piston speed = %3.1f m/s \n (c) The clearence volume of one cylinder = %3.1f cm^3 \n (d) The piston speed at the end of combustion = %3.2f m/s \n (e) The distance the piston travels from TDC at the end of combustion = %3.2f cm \n (f) Instantaneous volume = %3.1f cm^3 ',L,up,Vc,up1,x,V)
