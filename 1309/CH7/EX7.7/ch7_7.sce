clc;
clear;
printf("\t\t\tChapter7_example7\n\n\n");
// Determination of wattage requirement
// properties of carbon dioxide at a film temperature of (400+600)/2 = 500 K from appendix table D2
rou= 1.0732; // density in kg/m^3 
cp= 1013; // specific heat in J/(kg*K) 
v= 21.67e-6; // viscosity in m^2/s  
Pr = 0.702; // Prandtl Number 
k= 0.03352; // thermal conductivity in W/(m.K)
a = 0.3084e-4; // diffusivity in m^2/s
V_inf=60; // carbon dioxide velocity in m/s
x_cr=(5e5)*v/V_inf; // The transition length in m
printf("\nThe transition length is %.1f cm",x_cr*100);
w=4; // width of each heater in cm
b=.16; // effective heating length in m
Tw=600; // temperature of heater surface in K
T_inf=400; // temperature of carbon dioxide in K
r=pmodulo(x_cr*100,w);
n=(x_cr*100+r)/w; // number of heater where transition occurs
printf("\nThe transition thus occur at %dth heater",n);
m=6; // number of heater strips
q=zeros(m+1,1);
x=[0.04 0.08 0.12 0.16 0.20 0.24];
for i=1:n-1 // transition occurs at 5th heater, so laminar zone equation is followed till then
    h(i)=(0.664*k)*(V_inf/v)^0.5*(Pr)^(1/3)/x(i)^0.5;
    printf("\n\nThe convective coefficient for heater no. %d is %d W/(sq.m.K)",i,h(i));
    q(i+1)=h(i)*x(i)*b*(Tw-T_inf);
    dq(i)=q(i+1)-q(i);
    printf("\nThe heat transferred by heater no. %d is %d W",i,dq(i));
end
// Turbulent zone exists from 5th heater onwards so the following equation is followed Nu=h*x/kf=[0.0359*(Re_L)^(4/5)-830]*(Pr)^(1/3)
for i=5:6
    Re_L(i)=V_inf*x(i)/v;
    h(i)=(k/x(i))*[0.0359*(Re_L(i))^(4/5)-830]*(Pr)^(1/3)
    printf("\n\nThe Reynolds number for heater no. %d is %.2e",i,Re_L(i));
    printf("\nThe convective coefficient for heater no. %d is %.1f W/(sq.m.K)",i,h(i));
    q(i+1)=h(i)*x(i)*b*(Tw-T_inf);
    dq(i)=q(i+1)-q(i);
    printf("\nThe heat transferred by heater no. %d is %d W",i,dq(i));
end

