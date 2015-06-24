//Given that
R = 9.0  //in Ohm
L = 2*10^-3  //in Henery
E = 18  //in Volts

//Sample Problem 31-5a
printf("**Sample Problem 31-5a**\n")
//As soon as switch is closed the inductor will act like current barrier
Io = E/R
printf("The current as soon as qwitch is closed is equal to %1.2fA\n", Io)

//Sample Problem 31-5b
printf("\n**Sample Problem 31-5b**\n")
//After long time inductor will act like short circuit
Req = R/3
If = E/(R/3)
printf("The current through the battery after long time will be %1.2fA", If)