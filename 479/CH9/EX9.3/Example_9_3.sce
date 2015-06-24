//Chemical Engineering Thermodynamics
//Chapter 9
//Fluid Flow in Pipes and Nozzles
//Example 9.3
clear;
clc;

//Given
P1 = 50;//initial pressure in Kgf/sq m
T1 = 45+273;//initial temperature in K
g = 9.81;
y = 1.35;//gamma
R = 848;//gas constant in m Kgf/Kgmole K
M = 29;//molecular weight of air
d = 1;//pipe diameter in cm

//(i)To plot velocity,specific volume,mass velocity against P2/P1
//(ii)To calculate the critical pressure,critical mass velocity and mass rate of flow
//(i)Plotting of graph
V1 = (R*T1)/(M*P1*1.033*10^4);//initial volume of the gas in cubic m/Kg
//P3 = P2/P1 (say)
//Assume P3 values as
P3 = [1.0 0.8 0.6 0.4 0.2 0.1 0];
G = [0 0 0 0 0 0 0];
for i = 1:7
    u2(i) = (((2*g*y*R*T1)/((y-1)*M))*(1-(P3(i)^((y-1)/y))))^(1/2);//final velocity in m/sec
end
for i = 1:6
     v2(i) = V1/(P3(i)^(1/y));//final specific volume in cubic meter/Kg
end
for i = 1:6
    G(i) = u2(i)/v2(i);//Mass velocity in Kg/sq m sec
end

clf;
xset('window',4);
plot(P3,u2,"o-");
xtitle("Velocity vs P2/P1","P2/P1","Velocity");
xset('window',5);
plot(P3,G,"+-");
xtitle("Mass velocity vs P2/P1","P2/P1","Mass velocity");
xset('window',6);
P_3 = [1.0 0.8 0.6 0.4 0.2 0.1];
plot(P_3,v2,"*-");
xtitle("Sp. volume vs P2/P1","P2/P1","Specific volume");

//(ii)Calculation of critical pressure,critical mass velocity and mass rate of flow
//From equation 9.37(page no 181)
P2 = P1*(2/(y+1))^(y/(y-1));
mprintf('The critical pressure is %f atm',P2);
//From equation a (page no 183)
u2 = (((2*g*y*R*T1)/((y-1)*M))*(1-((P2/P1)^((y-1)/y))))^(1/2);
mprintf('\n The critical velocity is %f m/sec',u2);
//From equation b (page no 183)
v2 = ((R*T1)/(M*P1*1.033*10^4))/((P2/P1)^(1/y));
mprintf('\n The critical specific volume is %f cubic meter/Kg',v2);
//From relation c (page no 183)
G = u2/v2;
mprintf('\n The critical mass velocity is %f Kg/sq meter sec',G);
W = G*(%pi/4)*(d/(100))^2;
mprintf('\n Mass rate of flow through nozzle is %f Kg/sec',W);
//end