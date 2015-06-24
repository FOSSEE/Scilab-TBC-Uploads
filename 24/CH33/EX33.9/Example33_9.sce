//Given that
Vp = 8.5*10^3  //in Volts
Vs = 120  //in volts
P = 78*10^3  //in W

//Sample Problem 33-9a
printf("**Sample Problem 33-9a**\n")
ratio = Vp/Vs
printf("The turn ratio is equal to %.3f\n", ratio)

//Sample Problem 33-9b
printf("\n**Sample Problem 33-9b**\n")
Is = P/Vs
Ip = P/Vp
printf("The current in primary circuit is %1.2eA\n", Ip)
printf("The current in secondary circuit is %1.2eA\n", Is)

//Sample Problem 33-9c
printf("\n**Sample Problem 33-9c**\n")
Rs = Vs/Is
Rp = Vp/Ip
printf("The resistance in primary circuit is %1.2eA\n", Rp)
printf("The resistance in secondary circuit is %1.2eA\n", Rs)