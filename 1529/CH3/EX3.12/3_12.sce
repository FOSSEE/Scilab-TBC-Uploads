//Chapter 3, Problem 12
clc
t=18                    //tempreture in celsius
R1=200                  //resistance in ohm
Rt=240                  //resistance in ohm
tc=0.0039               //tempreture coefficient of resistance
t1=((Rt-R1)/(R1*tc))+t
printf("Tempreture = %.2f degree celsius",t1)
