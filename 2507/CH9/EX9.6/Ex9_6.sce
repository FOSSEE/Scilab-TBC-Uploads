clc
clear
printf("Example 9.6 | Page number 268 \n\n");
//Find the final temperature when:
//Part(a) V = constant
//Part(b) pV = constant
//Part(c) pV^y = constant
//And P-V diagram
 
//Given Data
Cp = 1005 //J/kgK //specific heat at constant pressure
Cv = 718 //J/kgK //specific heat at constant volume
m = 1 //kg //mass of air
T1 = (27+273) //K //initial temperature
p1 = 1e5 //Pa //initial pressure
p2 = p1/2 //Pa //final pressure

//Solution
//Part(a)
printf("Part(a)\n");
R = Cp-Cv //J/kgK
V1_a = m*R*T1/p1 //m^3 //initial volume
V2_a = V1_a //m^3 //final volume
T2 = p2*V2_a/(m*R) //K //final temperature
printf("Final temperature,T2 = %.1f K\n\n",T2)

//Part(b)
printf("Part(b)\n");
V1_b = m*R*T1/p1 //m^3 //initial volume
V2_b = V1_b*(p1/p2) //m^3 //final volume
//Isothermal process => T1 = T2
printf("Final temperature,T2 = %.1f K\n\n",T1)

//Part(c)
printf("Part(c)\n");
R = Cp-Cv //J/kgK
y = Cp/Cv
V1_c = m*R*T1/p1 //m^3 //initial volume
V2_c = V1_c*(p1/p2)^(1/y) //m^3 //final volume
T2 = p2*V2_c/(m*R) //K //final temperature
printf("Final temperature,T2 = %.1f K\n\n",T2)

//P-V diagram
P = [p1*1e-5 p2*1e-5]
V = [V1_a V1_a]
plot(V,P,'b')       //plot for part(a)

V = linspace(V1_b,V2_b,100)
P = (p1*1e-5*V1_b)./V
plot(V,P,'g')      //plot for part(b)

V = linspace(V1_c,V2_c,100)
P = (p1*1e-5*V1_c^y)./V.^y
plot(V,P,'r')     //plot for part(c)
xlabel('Volume in m^3')
ylabel('Pressure in bar')
title('p-V diagram sought in example 9.6')
legends(['Part (a)';'Part (b)';'Part (c)'],[2 3 5],opt=1)
