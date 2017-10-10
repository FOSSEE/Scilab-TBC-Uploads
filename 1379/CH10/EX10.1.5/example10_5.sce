//example 10.5
clc; funcprot(0);
clf()
//exapple 10.5 
// Initialization of Variable
g = 9.81;
t=[0 45 135 495 1875 6900 66600 86400];//time
m=[0.1911 0.1586 0.1388 0.1109 0.0805 0.0568 0.0372 0.0359];//mass total
rho1=3100;//density of cement
mu=1.2/1000;//viscosity of desperant liquid
rho=790;//density of desperant liquid
h=0.2;
V=10;
s=0;
d(1)=100/1000000;//assumed value
for i=1:7
    d(i+1)=sqrt(18*mu*h/g/t(i+1)/(rho1-rho));//dia of particles
    mc(i+1)=m(i+1)-0.2/100*V;//mass of cement
    s=s+mc(i+1);  
end
mc(1)=m(1)-0.2*V/100;
s=s+mc(1);
mp(1)=100;
for i=1:7
    mp(i+1)=mc(i+1)/mc(1)*100;//mass percent below size
end
plot(mp,d);
xtitle("", "%undersize", "Particle Size(m)");
u=h/t(2);
Re=d(2)*u*rho/mu;
if Re<2 then
    disp("since Re<2 for 81% of particles so settlement occurs mainly by stoke-s law")
end