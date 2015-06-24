//Chapter-4,Example4_2,pg 4-24
E1rms=10
E2rms=15
E1m=E1rms*sqrt(2)
E2m=E2rms*sqrt(2)
//voltage across AB is proportional to E1+E2 in positive half cycle
Ep=(1/(2*%pi))*(2*E1m+E2m)//output in positive half cycle
//voltage across AB is proportional to E1-E2 in negative half cycle
En=(1/(2*%pi))*(2*E1m-E2m)//output in negative half cycle
Eab=Ep-En
printf("output voltage\n")
printf("Eab=%.2f V",Eab)
