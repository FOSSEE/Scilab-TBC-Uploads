clc;funcprot(0);//Example 3.9
//Initilisation of Variables
al=1.1*10^-4;.....//thermal diffucivity of copper slab in m^2/s
K=380;.....//thermal conductivity of copper slab in W/m degrees celcius
Ti=10;...//Uniform temparature of the slab in degrees celcius
To=100;...//Surface temparature when slab is exposed when t=5 in degrees celcius
To1=300;...//Surface temparature when slab is exposed when t=10 in degrees celcius
t1=5*60;....//time after exposure of surface in degrees celcius
t2=10*60;....//time after exposure of surface in degrees celcius
x=0.05;....//depth of metal position
T=90;...//Temparature for required time in degrees celcius
//calculations
E=erfinv((T-To)/(Ti-To));.....//error funtion value
Q1=(K*(To-Ti))/sqrt(%pi*al*t1);......//heat flux when surface at 5 min after explosure in W/m^2
Q2=(K*(To1-Ti))/sqrt(%pi*al*t2);.....//heat flux when surface at 10 min after explosure in W/m^2
t=(x^2/(4*(al)*E^2));.....//time taken for metal position at a depth of 5 cm in s
disp(Q1/1000,"heat flux when surface at 5 min after explosure in W/m^2:")
disp(Q2/1000,"heat flux when surface at 10 min after explosure in W/m^2")
disp(t,"time taken for metal position at a depth of 5 cm in s:  ")
