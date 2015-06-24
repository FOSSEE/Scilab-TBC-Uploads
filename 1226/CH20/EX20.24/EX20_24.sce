clc;funcprot(0);//EXAMPLE 20.24
// Initialisation of Variables
p1=1;........//Suction pressure in bar
p2=4;.....//Intermediate pressure in bar
p5=3.8;.......//Pressure of air leaving the interooler in bar
p6=15.2;........//Delivery pressure in bar
t1=300;..........//Suction temperature in K
dlp=0.36;........//Diameter of low pressure cylinder in m
llp=0.4;........//Stroke of low pressure cylinder in m
N=220;........//Compressor rpm
k=0.04;........//Clearance ratio
cp=1.0035;.........//Specific heat at constant pressure in kJ/kgK
n=1.3;........//Compression index
R=0.287;........//Gas constant in kJ/kgK
p8=p5;p3=p2;p7=p6;t5=t1;
//Calculations
Vslp=(%pi/4)*dlp*dlp*llp*N*2;.......//Swept volume in m^3
etavlp=(1+k)-(k*((p2/p1)^(1/n)));.....//Volumetric efficiency
valp=Vslp*etavlp;................//Volume of air drawn in low pressure cylinder in m^3
m=(p1*10^5*valp)/(R*1000*t1);........//Mass of air drawin in kg/min
t2=round(t1*((p2/p1)^((n-1)/n)));
Qr=m*cp*(t2-t5);........//Heat rejected to the intercooler in kJ/min
disp(Qr,"Heat rejected to the intercooler in kJ/min:")
vahp=(m*R*t5*1000)/(p5*10^5);...//Volume of air drawn into high pressure cylinder per min in m^3
Vshp=vahp/etavlp;.........//Swept volume of high pressure cylinder in m^3/min
dhp=sqrt(Vshp/((%pi/4)*2*N*llp));..........//Diameter of high pressure cylinder in m
disp(dhp*1000,"Diameter of high pressure cylinder in mm:")
P=(n/(n-1))*m*(1/60)*R*(t2-t1);.......//Power required for high pressure cylinder in kW
disp(P,"Power required for high pressure cylinder in kW:")
