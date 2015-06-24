//Finding of Rise of Pressure and circumferential, Longitudinal stress
//Given
l=2000;
d=0.6;
v=2;
t=0.01;
k=19.62*10^8;
rho=1000;
E=19.62*10^10;
//To Find
a=(1/k)+(d/(t*E));
b=(1/rho)*a;
c=sqrt(b);
p=2/c;
p1=p/10000;
fc=((p*d)/(2*t))/10000;
fl=((p*d)/(4*t))/10000;
disp("Rise of Pressure ="+string(p1)+"N/cm^2");
disp("Circumferential stress ="+string(fc)+" N/m^2");
disp("Longitudinal stress ="+string(fl)+" N/m^2");
