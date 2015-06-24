//caption:Find limiting value of unknown resistance
//Ex4.5
clc
clear
close
R1=100//value of resistance(in ohm)
R2=100//value of resistance(in ohm)
R3=230//value of standard arm resistance(in ohm)
dR1=0.02//ratio arms accuracy range(in %)
dR2=0.02//ratio arms accuracy range(in %)
dR3=0.01//standard ratio arm accuracy range(in %)
Rx=(R2*R3)/R1
dRx=dR1+dR2+dR3
Rx1=R3-((R3*dRx)/100)
Rx2=R3+((R3*dRx)/100)
disp(Rx1,'lower value of limiting resistance(in ohm)=')
disp(Rx2,'upper value of limiting resistance(in ohm)=')