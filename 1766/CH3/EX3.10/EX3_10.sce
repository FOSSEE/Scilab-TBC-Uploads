clc;funcprot(0);//Example 3.10
//Initilisation of Variables
Ti=20;...//Uniform temparature of the wood piece in degrees celcius
To=120;...//Rised Surface temparature  in degrees celcius
t1=2*60;....//time after exposure of surface in degrees celcius
t2=20*60;....//time after exposure of surface in degrees celcius
x=0.02;....//depth of metal position
al=0.8*10^-7;.....//thermal diffucivity of copper slab in m^2/s
K=0.15;.....//thermal conductivity of copper slab in W/m degrees celcius
//calculations
E1=x/(2*sqrt(al*t1));....//Value for when t=2 min 
T1=(erf(E1)*(Ti-To))+To;...//Temparature when 2 cm at 2 min in degrees celcius
E2=x/(2*sqrt(al*t2));....//Value for when t=20 min 
T2=(erf(E2)*(Ti-To))+To;...//Temparature when 2 cm at 20 min in degrees celcius
disp(T1,"Temparature when 2 cm at 2 min in degrees celcius:")
disp(T2,"Temparature when 2 cm at 20 min in degrees celcius:")
