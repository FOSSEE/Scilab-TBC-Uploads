//To calculate the Molar Enthalpy of Vapourisation

//Example 6.6

clc;

clear;

T=[20,30,40,50,60,70];

p=[17.54,31.82,55.32,92.51,149.38,233.7];

for i=1:6
    x(i)=1/(T(i)+273);
end 

for i=1:6
    y(i)=log(p(i));
end

plot(x,y);

xlabel("K/T", "fontsize", 2);//Putting the x-axis as K/T

ylabel("ln(p)", "fontsize", 2);//Putting the y-axis as ln(Kp)

m=-(y(2)-y(1))/(x(2)-x(1));

R=8.314;

delH=R*m/1000;

printf("Molar Enthalpy of Vapourization of Water = %.1f kJ mol^-1",delH);
