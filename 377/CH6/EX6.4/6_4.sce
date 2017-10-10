p0=10^15;
n0=10^5;
a=1331;  //say μe=a
q=1.6*10^-19;
b=0.0259;  //sat K*T/q=b
c=-10^14;
disp("Dn=(K*T/q)*μe");
Dn=b*a;
printf('\n The value of Dn is %fcm^2/s',Dn);
disp("Jn=q*Dn*(dn/dx)");
Jn=q*Dn*c;
d=Jn*10^3;
printf('\n The value of Jn is %fmA/cm^2',d);