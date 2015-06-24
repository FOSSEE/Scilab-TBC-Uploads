//Given that
Mi = 850  //in kg
R = 2.3  //kg/s
Vrel = 2800  //in kg

//Sample Problem 9-8a
printf("**Sample Problem 9-8a**\n")
T = R*Vrel
printf("The Thrust force rocket engine provide is equal to %dN\n", T)

//Sample Problem 9-8b
printf("\n**Sample Problem 9-8b**\n")
a = T/Mi
printf("The initial acceleration of rocket is %fm/s^2\n", a)

//Sample Problem 9-8c
printf("\n**Sample Problem 9-8c**\n")
Mf = 180  //in kg
Vf = Vrel * log(Mi/Mf)
printf("The final velocity of the rocket is %fm/s", Vf)