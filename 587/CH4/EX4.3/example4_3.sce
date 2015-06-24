clear;
clc;

//Example4.3[Boiling Eggs]
//Given:-
T1=5;//Initial temperature of egg[degree Celcius]
T2=95;//Temperature of Boiling Water[degree Celcius]
h=1200;//Convection heat transfer coefficient of egg[W/m^2.degree Celcius]
r=0.025;//Radius of egg[m]
T3=70;//Final temperature attained by centre of egg[degree Celcius]
k=0.627;//Thermal conductivity[W/m.degree Celcius]
a=0.151*(10^(-6));//Thermal diffusivity[m^2/s]
//Solution:-
Bi=(h*r)/k;//Biot Number
if(Bi>0.1) then,
disp("the lumped system analysis is not applicable")
//Findinf coefficient for a sphere corresponding to this bi are,
lambda1=3.0754,A1=1.9959;
x=(T3-T2)/(T1-T2);
tau=(-1/(lambda1^2))*log(x/A1);
disp(tau,"Fourier no is")
//Since fourier no is greater than 0.2, cooking time is determined from the definition of fourier no to be
t=(tau*(r^2))/a;//[seconds]
disp("minutes",(t/60),"The time taken for center of egg to reach 70 degree Celcius temperature")
else,
    disp("the lumped system is not applicable")
end    