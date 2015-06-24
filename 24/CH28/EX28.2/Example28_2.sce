//Given that
R1 = 20  //in Ohm
R2 = 20  //in Ohm
R3 = 30  //in Ohm
R4 = 8  //in Ohm
E = 12  //in Volts

//Sample Problem 28-2a
printf("**Sample Problem 28-2a**\n")
R23 = R2*R3/(R2+R3)
Req = R1 + R23 + R4
i = poly(0, 'i')
i = E/Req
printf("The current through the battery is %fA\n", i)

//Sample Problem 28-2b
printf("\n**Sample Problem 28-2b**\n")
i2 = i*R23/R2
printf("The current through R2 is %fA\n", i2)

//Sample Problem 28-2c
printf("\n**Sample Problem 28-2c**\n")
i3 = i2*R2/R3
printf("The current through R3 is %fA", i3)