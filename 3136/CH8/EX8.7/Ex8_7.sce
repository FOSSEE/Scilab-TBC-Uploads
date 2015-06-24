clear all; clc;

disp("Velocity diagrams at the rotor inlet and outlet are given.")

disp("Velocities at the rotor inlet can be calculated .")

r2=5/12
N=15000
U2=r2*N*%pi/30
printf(" U2=r2*N*pi/30 = %0.1f ft/s",U2)

alpha2=85*%pi/180//converting to radians
V2=U2/sin(alpha2)
printf("\n V2= %0.0f ft/s",V2)

Vr2=U2/(tan(alpha2))
printf("\n Vr2=W2= %0.1f ft/s",Vr2)

disp("Hence from Cp(T02-T2)=V2^2/2, where T02=T01, we have")
T02=2000
V2=657
Cp=0.24*778*32.2
T2=T02-(V2^2)/(2*Cp)
printf("\n T2=T02-(V2^2)/(2*Cp) =%0.1fR",T2)

disp("From εn=(T2-T2_dash)/((V2^2)/(2*Cp)), we have")
T2=1964.1
epsilon_n=0.08
V2=657
T2_dash=T2-epsilon_n*V2^2/(2*Cp)
printf(" T2_dash=T2-epsilon_n*V2^2/(2*Cp)= %0.1fR",T2_dash)

p01=50
T2_dash=1961.2
T01=2000
//let i=(k/(k-1))
i=3.5
p2=p01*(T2_dash/T01)^i
printf("\n p2= %0.1f psia",p2)

p2=46.7
R=53.3
T2=1964.1
rho2=p2*144/(R*T2)//conversion factor=144
printf("\n rho2= %0.3f lb,/ft^3",rho2)

rho2=0.064
Vr2=57.3
A2=(2*%pi*5*2/144)
m=rho2*Vr2*A2
printf("\n So the mass flow rate m=rho2*Vr2*A2= %0.2f lbm/s",m)

disp("Assuming whirl-free flow at the rotor outlet under the design condition, we have")
U2=654.5
delta_E=(U2)^2
printf("\n delta_E=U2*Vu2=U2^2 %g ((ft/s)^2)=428370/(32.2*550)=24.2hp/(lbm/s)",delta_E)

m=1.60
delta_E=24.2//after converting to new units
Ps=m*delta_E
printf("\n Ps= %0.1f hp",Ps)

rm3=2.06/12
Um3=rm3*N*%pi/30
printf("\n Um3= %0.2f ft/s",Um3)

beta3=30*%pi/180//converting to radians
V3=Um3/(tan(beta3))
printf("\n V3 = %0.0f ft/s",V3)

W3=Um3/sin(beta3)
printf("\n W3 = %0.2f ft/s",W3)//the value has been rounded off to 539.2 in the book,however the value found here is more accurate

disp("The turbine efficiency can be determined from equations 8.12 and 8.13. Without detailed calculations wthe result is given as ETAt=0.691")

disp("The exhaust pressure/temperature can be determined from te following calculations with the help of figure 8.21")
delta_E=428370/(32.2*778)
printf(" From Cp(T01-T03)=delta_E= %0.1fBtu/lbm",delta_E)

disp("(T01-T03)/(T01-T3dash)=Etat=0.691")

T03=2000-(17.1/0.24)
printf(" T03= %0.0f R",T03)

T01=2000
T03=1929
ETAt=0.691
T3_dash=T01-(T01-T03)/ETAt
printf("\n T3_dash=T01-(T01-T03)/ETAt %0.0fR =",T3_dash)

//let i=k/(k-1)
i=3.5
p01=50
T3_dash=1897
T01=2000
p3=p01*(T3_dash/T01)^i
printf("\n p3=p01*(T3_dash/T01)^i= %0.1f psia",p3)

T2=1964.4
p3=41.6
p2=46.7
// Let l=(k-1)/k
l=0.2857
T3_dbldash=T2*(p3/p2)^(l)
printf("\n T3_dbldash=T2*(p3/p2)^(1/i)=%0.2fR",T3_dbldash)//answer given in the book is 1900.3 R,however the value tabulated here is more accurate

T3_dbldash=1900.3
epsilon_r=0.45
W3=539.2
Cp=0.24*32.2*778
T3=T3_dbldash+epsilon_r*(W3^2)/(2*Cp)
printf("\n T3= %0.1f R",T3)






















































