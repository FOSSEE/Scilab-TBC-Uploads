clear
//Given
R1=400                      //ohm
R2=800.0
R3=10
V=6
R11=10000.0
R22=400

//Calculation
Rt=R1+R2+R3
I=V/Rt
Rp=(R11*R22)/(R11+R22)
R=Rp+800
I1=V/R
Vab=I1*Rp

//Result
printf("\n Hence the voltmeter will read %0.2f  V",Vab)
