clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 13.5   Page 834 \n')// Example 13.5

// Heat gain by the fluid passing through the inner tube
// Percentage change in heat gain with radiation shield inserted midway between inner and outer tubes

T2 = 300      ;//[K] Temperature of inner surface
D2 = .05      ;//[m] Diameter of Inner Surface
e2 = .05      ;// emissivity of Inner Surface
T1 = 77      ;//[K] Temperature of Outer Surface
D1 = .02           ;//[m] Diameter of Inner Surface
e1 = .02      ;// emissivity of Outer Surface
D3 = .035        ;//[m] Diameter of Shield
e3 = .02        ;// emissivity of Shield
stfncnstt = 5.670*10^-8        ;//[W/m^2.K^4] Stefan Boltzman Constant

//From Equation 13.20 Heat balance
q = stfncnstt*(%pi*D1)*(T1^4-T2^4)/(1/e1 + (1-e2)/e2*D1/D2) ;//[W/m] 

RtotL = (1-e1)/(e1*%pi*D1) + 1/(%pi*D1*1) + 2*[(1-e3)/(e3*%pi*D3)] + 1/(%pi*D3*1) + (1-e2)/(e2*%pi*D2)    ;//[m^-2]
q2 = stfncnstt*(T1^4 - T2^4)/RtotL;   //[W/m] 

printf('\n Heat gain by the fluid passing through the inner tube = %.2f W/m \n Percentage change in heat gain with radiation shield inserted midway between inner and outer tubes is = %.2f percent',q,(q2-q)*100/q); 