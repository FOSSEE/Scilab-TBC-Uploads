

//exapple 4.2 
clc; funcprot(0);
// Initialization of Variable
rd=[0 1 2.5 5 10 15 17.5]/100;//radial distance from pipe
dlv=[0 0.2 0.36 0.54 0.81 0.98 1]/100;//differnce in liquid levels
r=[.175 .165 .150 .125 .075 .025 0];//
g=9.81;
R=8.314;
rho=999;
temp=289;
P1=148*1000;
M=7.09/100;
pi=3.12
rhoCl2=P1*M/R/temp;//density of Cl2
nuCl2=1/rhoCl2;//specific volume of Cl2
function[y]=P2(x);
    y=P1+x*(rho-rhoCl2)*g;
endfunction
for i=1:7
    y=P2(dlv(i));
    u(i)=sqrt(2*P1*nuCl2*log(y/P1));
    a(i)=u(i)*r(i);
end
clf();
plot(r,a);
xtitle("","r (m)","u*r (m^2/s)");
s=0;
for i=1:6//itegration of the plotted graph
    s=abs((r(i)-r(i+1))*.5*(a(i)+a(1+1)))+s;
end
s=s-0.01;
Q=2*pi*s;
disp(Q,"volumetric flow rate (m^3/s):");
disp(Q*rhoCl2,"mass flow rate of chlorine gas (kg/s)")

