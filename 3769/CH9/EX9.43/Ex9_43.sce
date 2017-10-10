clear
//Given
V1=60                   //ohm
V2=30
R=300.0
R1=1200
R2=400                       //ohm

//Calculation
V=V1-V2
I=V/R
R11=(R1*R)/(R1+R)
I=V1/(R11+R2)
V11=I*R11

//Result
printf("\n Voltmeter will read %0.3f  V", V11)
