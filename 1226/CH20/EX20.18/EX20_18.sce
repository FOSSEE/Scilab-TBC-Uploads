clc;funcprot(0);//EXAMPLE 20.18
// Initialisation of Variables
ns=2;.............//No of stages
v1=0.2;.........//Intake volume in m^3/s
p1=1;..........//Intake pressure in bar
t1=289;...............//Intake temperature in K
p3=7;.........//Final pressure in bar
n=1.25;.......//Compression index
N=600;........//Compressor rpm
cp=1.005;.....//Specific heat at constant pressure in kJ/kgK
R=0.287;......//Gas constant in kJ/kgK
//Calculations
p2=sqrt(p1*p3);......//Intermediate pressure in bar
disp(p2/10,"Intermediate pressure in Mpa:")
vslp=60*v1/N;..........//Volume of low pressure cylinder in m^3
vshp=p1*vslp/p2;..........//Volume of high pressure cylinder in m^3
disp(vslp,"Volume of low pressure cylinder in m^3:")
disp(vshp,"Volume of high pressure cylinder in m^3:")
W=(ns*(n/(n-1)))*p1*10^5*(v1/1000)*(((p3/p1)^((n-1)/(ns*n)))-1);...........//Power required to drive the compressor in kW
disp(W,"Power required to drive the compressor in kW:")
m=p1*10^5*v1/(R*t1*1000);.........//Mass of air handled in kg/s
t2=t1*((p2/p1)^((n-1)/n));.........//Temperature at the end of first stage compression in K
Qr=m*cp*(t2-t1);.......//Heat rejected in the intercooler in kW
disp(Qr,"Heat rejected in the intercooler in kW:")
