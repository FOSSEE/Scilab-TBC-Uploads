clc;funcprot(0);//EXAMPLE 20.12
// Initialisation of Variables
n=2;........//No of cylinders 
ma=16;........//Mass of air supplied per min in kg
p1=1;........//Suction pressure in bar
t1=288;.......//Suction temperature in K
k=0.04;.......//Clearance ratio
ni=1.3;........//Compression index
R=0.287;........//Gas constant in kJ/kgK
N=2000;........//Engine rpm
p3=7;...........//Delivery pressure in bar
rld=1.2;...........//Ratio of stroke to bore for compressor cylinder and engine cylinder
etamech=0.82;.........//Mechanical efficiency of engine
pmb=5.5;..........//Mean effective pressure in bar in engine
ne=4;.............//No of engine cylinders
//Calculations
Vs=(((ma/n)*R*1000*t1)/(p1*10^5*N))/((1+k)-(k*((p3/p1)^(1/ni))));
Dc=(Vs/((%pi/4)*rld))^(1/3);.........//Diameter of compressor cylinder in m
Lc=rld*Dc;.............//Stroke of the compressor cylinder in m
disp(Dc*1000,"Diameter of compressor cylinder in mm:")
disp(Lc*1000,"Stroke of compressor cylinder in mm:")
IP=(ni/(ni-1))*(ma/60)*R*t1*(((p3/p1)^((ni-1)/ni))-1);......//Indicated power of the compressor in kW
BP=IP/etamech;...............//Brake power of the engine in kW
De=((BP*60*1000)/(ne*pmb*10^5*rld*(%pi/4)*N))^(1/3);......//Diameter of the engine cylinder in m
Le=rld*De;...........//Stroke of the engine cylinder in m
disp(De*1000,"Diameter of engine cylinder in mm:")
disp(Le*1000,"Stroke of engine cylinder in mm:")

