clear
//Given
R1=4                   //ohm
R2=4                            //ohm
R3=12
R4=6.0
E=16
r=1                         //ohm

//calculation
Rab=R1*R2/(R1+R2)
Rcd=R3*R4/(R3+R4)
R=Rab+Rcd+1
I=E/(R+r)
I1=I/2.0
I3=I*R4/(R3+R4)
I4=I*R3/(R3+R4)
Vab=4*I1
Vbc=I*1
Vcd=12*I3

//Result
printf("\n (i) equivalent resistance of the network is  %0.3f  ohm", R)
printf("\n (ii) Circuit current is %0.3f A , Current in R1 is %0.3f A , Current in R3 is %0.2f A , Current in R4 is  %0.2f ",I,I1,I3,I4)
printf("\n Voltage drop Vab is %0.3f V \nVbc is %0.3f V \nVcd is %0.3f V",Vab,Vbc,Vcd)
