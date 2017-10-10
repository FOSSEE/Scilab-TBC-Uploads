clear
//Given
V=250              //V
C1=6                //micro F
C2=4
Cp=10*10**-6

//Calculation
pd=V*C1/(C1+C2)
q=pd*C2*10**-6
q1=2*q
pd1=q1/Cp
q2=C2*pd1
q3=C1*pd1

//Result
printf("\n New potentila difference is  %0.3f  V", pd1)
printf("\n Charge on 4 micro F capacitor is  %0.3f  micro C",q2)
printf("\n Charge on 6 micro F capacitor is  %0.3f  micro C",q3)
