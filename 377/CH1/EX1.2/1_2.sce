c=3*(10^8);
pi=3.14;
m0=(549*1.6*10^-13)/(c^2)*(10^28);
printf('\n The value of m0 is %f*(10^-28) kg',m0);
disp("Δm0*Δt >= h/(2*pi*c^2)");
a=7*10^-19;  //say Δt=a
h=1.055*(10^-34);
d=(a*3*10^16);
b=h/d;  //say Δm0=b
e=(b)/(m0);
printf('\n The Uncertainity in terms of rest mass is %f',e);
disp("p^2/(2*m0) = K and (p+Δp)^2/(2*m0) = K+(10^3*1.6*10^-19)");
disp("(p+Δp)^2 - p^2 = 2*m0*(10^3*1.6*10^-19)");
f=2*1.672*1.6*(10^-1);
g=sqrt(f);
k=h/j;
l=k*10^13;
printf('\n The value of minimum uncertainity is %f m',l);