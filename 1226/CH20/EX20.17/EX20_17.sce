clc;funcprot(0);//EXAMPLE 20.17
// Initialisation of Variables
FAD=6;.......//Free air delivered in m^3/min
p1=1;........//suction pressure in bar
t1=300;......//Suction temperature in K
p3=40;.......//Delivery pressure in bar
p2=6;........//Intermediate pressure in bar
t3=300;........//Temperature at the inlet to 2nd stage in K
n=1.3;.........//Compression index
etamech=0.8;.....//Mechanical efficiency
N=400;............//Compressor rpm
R=0.287;.........//Gas constant in kJ/kgK
//Calculations  
dlp=(FAD/(N*(%pi/4)))^(1/3);...............//Diameter of the low pressure cylinder in m
dhp=sqrt(1/(dlp*N*(%pi/4)));............//Diameter of high pressure cylinder in m
disp(dlp*1000,"Diameter of low pressure cylinder in mm:")
disp(dhp*1000,"Diameter of high pressure cylinder in mm:")
m=(p1*FAD*10^5)/(R*t1*1000*60);........//Mass flow of air in kg/s
W=n*(1/(n-1))*m*R*t1*(((p2/p1)^((n-1)/n))+((p3/p2)^((n-1)/n))-2);........//Indicated work in kJ/s
P=W/etamech;...............//Power required in kW
disp(P,"Power required to run the compressor:")

