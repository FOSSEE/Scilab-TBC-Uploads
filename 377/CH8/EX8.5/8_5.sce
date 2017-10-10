disp("σ=q*μe*n0");
q=1.6*10^-19;
b=700;  //say b=μe
n0=10^17;
a=q*b*n0;  //say a=σ
printf('\n The value of σ is %f /ohm/cm',a);
disp("ρ=σ^-1");
c=1/a;  //say c=ρ
printf('\n The value of resistivity is %f ohm-cm',c);
Rh=-1/(q*n0);
printf('\n The value of Hall coefficient is %f cm^3/C',Rh);
Ix=10^3;
Bz=10^-5;
t=10^-2;
Vh=Ix*Bz*Rh/t;
printf('\n The value of Hall voltage is %f μV',Vh);