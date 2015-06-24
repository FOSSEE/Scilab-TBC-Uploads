//Chapter 10, Problem 24
clc
R2=100                          //resistamce in ohm
R3=432.5                        //resistamce in ohm
R1=1000                         //resistamce in ohm
e1=1                            //error of R1 in percent
e2=0.5                          //error of R2 in percent
e3=0.2                          //error of R3 in percent
Rx=R2*R3/R1
et=e1+e2+e3
et1=et*Rx/100
printf("Unknown resistance = %.2f ohm \n\n",Rx)
printf("Maximum relative error = %.1f percent\n",et)
printf("Maximum relative erroe in ohm = %.2f ohm",et1)
