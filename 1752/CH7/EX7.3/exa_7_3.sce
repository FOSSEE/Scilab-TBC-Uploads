//Exa 7.3
clc;
clear;
close;
//given data
epsilon=0.5;
T1=1200;// in K
T2=300;// in K
//(a) Heat transfer rate between the two plates is 
// Formula Fg12=1/((1/epsilon1+(1/epsilon2-1)*A1/A2))
epsilon1=epsilon;
epsilon2=epsilon;
A1byA2=1;
Fg12=1/(1/epsilon1+(1/epsilon2-1)*A1byA2);
// Formula q12= sigma*A*Fg12*(T1^4-T2^4)  
sigma=5.67*10^-8;
q12byA=sigma*Fg12*(T1^4-T2^4);// in W/m^2
disp(q12byA,"Heat transfer rate between the two plates in W/m^2")

//(b)
epsilon3=.05;
Fg13=1/(1/epsilon1+(1/epsilon3-1)*A1byA2);
Fg32=1/(1/epsilon3+(1/epsilon2-1)*A1byA2);
// q13=q32
// sigma*A*Fg13*(T1^4-T3^4) = sigma*A*Fg32*(T3^4-T2^4)  
T3= ((T1^4+T2^4)/2)^(1/4);
T3=floor(T3);
q13byA=sigma*Fg13*(T1^4-T3^4);// in W/m^2
disp(q13byA,"Heat transfer rate if a radiation shield with an emissivity of 0.05 on both sides is placed between the two plates in W/m^2")