clear;
clc;
close;
disp("Example 11.10")

Cdf=0.82
Cdo=0.65
dpf=200 //kPa
dp0=200 //in kPa
rhof=85 //kg/m^3
rho0=1350 //kg/m^3
r=2.5
A=r*Cdf/Cdo*(dpf/dp0*rhof/rho0)^(1/2)
disp(A,"(a)Oxidizer-to-fuel oriface aera ratio A0/Af :")
vf=Cdf*(2*dpf/rhof)^(1/2)
v0=((2*dp0/rho0)^(1/2))*Cdo
disp(vf,"(b)Fuel oriface discharge speed in m/s:")
disp(v0,"Oxidizer oriface discharge speed in m/s:")
disp("(c)The graph between injection angle versus oxidizer injection angle for axial resultant stream 0 ")
//for graph

z0=10:0.05:60
i=2
for r=2.5:1:4.5
    g1=[]
gc1=1

for gm0=10:0.05:60
gmf=asind((r*(v0/vf)*sind(gm0)))
g1(gc1)=gmf
gc1=gc1+1
end
plot2d(z0,g1,i)
xgrid
i=i+1
xlabel("Oxidizer injection angle in degree")
ylabel("Fuel injection angle in degree")
title("(c)Oxidizer-fuel injection angles")
legend("r=2.5","r=3.5","r=4.5")
end










