//chapter-2,Example2_9,pg 486

//(R3/R1)=0.98^-1(R2/R4)

R1=10*10^3

R3=10*10^3

I1=130*10^-6

Vo1=R1*(1+0.98)*I1//output for case-1, (R2/R4)=0.98

//(R1/R3)=(R4/R2)

Vo2=R1*(1+(R3/R1))*I1//output for case-2

Vo12=((Vo2-Vo1)/Vo2)*100//percent difference

printf("difference in output voltage\n")

printf("Vo12=%.4f ohm",Vo12)