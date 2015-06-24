clc

alpha=100//per cm
betaa=0.1//per cm A
Tau=0.9
g0=100//per cm
L=300*10^-4//cm
w=5*10^-4//cm
R1=0.44
R2=0.99
Jth=((g0*Tau)/betaa)+(1/betaa)*(alpha+(1/(2*L))*log(1/R1*R2))
disp(Jth,"Jth in A/cm^2 is=")
Ith=Jth*L*w
disp(Ith,"Ith in A is=")
