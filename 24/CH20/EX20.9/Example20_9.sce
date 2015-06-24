//Given that
n = 1  //in mol
Ti = 310  //in K
Vi = 12  //in L
Vf = 19  //in L

//Sample Probelm 20-9a
printf("**Sample Problem 20-9a**\n")
gama = 7/5  //for diatomic gases
Tf = Ti*(Vi/Vf)^(gama-1)
printf("The final temprature of the gas is %fK\n", Tf)

//Sample Probelm 20-9b
printf("\n**Sample Problem 20-9b**\n")
Tf = Ti  //Temprature does not change in free expansion
Pi = 2  //in Pa
Pf = Pi*Vi/Vf
printf("The final pressure of the gas is %fPa\n", Pf)
printf("The final temprature of the gas is %fK", Tf)