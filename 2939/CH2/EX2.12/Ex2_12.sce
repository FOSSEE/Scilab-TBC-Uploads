
// Ex2_12
clc;

// Given:
mf=1.5;// In T
h=6.6262*10^-34;// in J.s
mb=9.2741*10^-24;// in J/T
mn=5.0504*10^-27;//in J/T
ge=2.002;
gp=5.5854;
// Solution: Part(a)
v1=(gp*mn*mf)/(h*10^6);
printf("\n The frequency needed to bring proton spin resonance is  = %f MHz",v1)
// Solution: Part(b)
v2=(ge*mb*mf)/(h*10^9);
printf("\n The frequency needed to bring electron spin resonance is  = %f GHz",v2)
