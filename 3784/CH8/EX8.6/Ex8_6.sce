clc
//Variable Initialisation
Vs=6.6e+3//Supply voltage in Volts
f1=50//Supply Frequency
Ns=1000//rated motor speed
Rd=0.2//dc link inductor resistance in ohm
Xs=2.6//Reactance in ohm
P=10e+6//motor rating in Watt
pf1=1
al=150
//solution
V1=Vs/sqrt(3)
Is=P/(3*V1*pf1)
Id=Is*%pi/sqrt(6)
phi=180-al
N2=500
f2=f1*N2/Ns
Vph=V1*N2/Ns
P2=3*Vph*Is*cosd(phi)
Pd=P2*10^(-6)//Power delivered in mega watt
Vdl=3*sqrt(6)*Vph*cosd(al)/%pi
Vds=(Id*Rd)-Vdl
A=Vds*%pi/(3*sqrt(6)*V1)
as=acosd(A)
N3=600
f3=f1*N3/Ns
Vph2=V1*N3/Ns
P3=3*Vph2*Is*pf1
Ps=P3-((Id^2)*Rd)
Ps2=Ps*10^(-6)
Vdl2=3*sqrt(6)*Vph2*pf1/%pi
Vds2=(Id*Rd)-Vdl2
B=Vds2*%pi/(3*sqrt(6)*V1)
as2=acosd(B)
printf('\n\n The Power Delivered by Motor=%0.1f MWatt\n\n',Pd)
printf('\n\n The Firing angle for motoring operation=%0.1f\n\n',as)
printf('\n\n The Power supplied to source =%0.1f MWatt\n\n',Ps2)
printf('\n\n The Firing angle for regenerative braking operation=%0.1f\n\n',as2)
