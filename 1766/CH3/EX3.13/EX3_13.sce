clc;funcprot(0);//Example 3.13
//Initilisation of Variables
Ti=250;...//Initial temparature of the iron plate in degrees celcius
Ta=50;...//Fluid temparature in degrees celcius
h=500;...//heat transfer coefficient on surface in W/m*degrees celcius
L=0.05;....//thickness of plate in m
t=120;....//time for measuring temparature in s
d=7850;.....//density of iron plate in kg/m^3
C=460;.....//specific heat of iron plate in kJ K
K=60;.....//thermal conductivity of iron plate in W/m K
al=1.6*10^-5;.....//thermal diffucivity of iron plate in m^2/s
A=1;.....//Area of iron plate in m^2 
//calculations
Lc=L/2;....//characteristic length of a slab in m
Bi=(h*Lc)/K;....//biot number 
Fo=(al*t)/Lc^2;....//Fourier number 
teta1=0.57;...//value got by heisler chart 
To=(teta1*(Ti-Ta))+Ta;....//center line temparature in degrees celcius
teta2=0.94;....//Value got from the position correction chart 
T=(teta2*(To-Ta))+Ta;....//Temparature at 1 cm at the center line in degrees celcius
teta3=0.46;.....//Got from hear transfer ratio for 1/Bi=4.8 and B1^2*Fo=0.137
V=L*A;.....//Volume of plate in m^3
Qo=(d*C*V*(Ti-Ta))/1000;...//Heat transfer in iron plate in kJ/m^2
Q=(teta3*Qo)/1000;.....//Heat transfer to the fluid after 120 sec in kJ/m^2
disp(To,"(i)center line temparature in degrees celcius:")
disp(T,"(ii)Temparature at 10mm at the center line in degrees celcius:")
disp(Q,"(iii)Heat transfer to the fluid after 120 sec in kJ/m^2:")
