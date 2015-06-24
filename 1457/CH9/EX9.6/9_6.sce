clc
//Initialization of variables
P1=10 //psia
T1=460+40 //R
R=1715
k=1.4
V1=1400 //fps
//calculations
rho1=P1/(R*T1)
c1=sqrt(k*R*T1)
M1=V1/c1
P2= P1 * (2*k*M1^2  - (k-1))/(k+1)
V2 =V1*((k-1)*M1^2 +2)/((k+1)*M1^2) 
rho2=rho1*V1/V2
T2=P2/rho2/R
P22=122.5
V22=286
T22=328
//results
printf("Pressure at point 2 = %.1f psia and %.1f N/m^2",P2,P22)
printf("\n Velocity at point 2 = %d fps and %d m/s",V2,V22)
printf("\n Temperature at point 2 = %d R and %d K",T2,T22)
disp("Similarly it can be done for SI units")
