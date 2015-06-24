clc
clear
//input data
DR=0.5//Degree of reaction
b1=44//Blade inlet angle in degree
b2=13//Blade outlet angle in degree
Po=5//The pressure ratio produced by the compressor
nc=0.87//The overall isentropic efficiency
T01=290//Inlet temperature in K
U=180//Mean blade speed in m/s
l=0.85//Work input factor
R=0.287//The universal gas constant in kJ/kg.K
Cp=1005//The specific heat of air at constant pressure in J/kg.K
r=1.4//The ratio of specific heats of air

//calculations
a2=b1//Air flow angle at entry in degree as DR=0.5
a1=b2//Air flow angle at exit in degree as DR=0.5
T0n1s=T01*(Po)^((r-1)/r)//The isentropic temperature of air leaving compressor stage in K
T0n1=((T0n1s-T01)/nc)+T01//The temperature of air leaving compressor stage in K
Ca=U/(tand(b2)+tand(b1))//The axial velocity in m/s
N=((Cp*(T0n1-T01))/(l*U*Ca*(tand(a2)-tand(a1))))//The number of stages 
ds=(Cp*(10^-3)*log(T0n1/T01))-(R*log(Po))//Change in entropy in kJ/kg.K

//output
printf('(a)The number of stages are %3.f\n(b)The change in entropy is %3.3f kJ/kg-K',N,ds)
