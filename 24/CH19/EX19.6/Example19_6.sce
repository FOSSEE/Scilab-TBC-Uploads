//Given that
La = 1  //(say)
Ld = 2.0*La
ka = 1  //(say)
kd = 5.0*ka
T1 = 25  //in degree C
T2 = 20  //in degree C
T5 = -10 //in degree C

//Sample Problem 19-6
printf("**Sample Problem 19-6**\n")
//The rate of thermal conduction will be same through (a) & (d)
//ka*A*(T2-T1)/La = kd*A*(T5-T4)/Ld
T4 = T5 - ka*(T2-T1)/La * (Ld/kd)
printf("The T4 is equal to %d degree C", T4)