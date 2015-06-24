//Given that
m = 720*10^-3  //in kg
Ti = -10  //in degree C
Tw = 15  //in degree C
Si = 2220  //in J/kg.K
L = 333*10^3  //in J/Kg
Sw = 4190  //in J/kg.K

//Sample Problem 19-3a
printf("**Sample Problem 19-3a**\n");
//When ice comes to temprature 0 degree celcius
deltaTi = 0 - Ti
Q1 = m*Si*deltaTi
//When ice melts to water
Q2 = m*L
//when water comes to temprature 15 degree celcius
deltaTw = Tw - 0
Q3 = m*Sw*deltaTw
Q = Q1 + Q2 + Q3
printf("The heat absorbed by the ice is %fKJ\n", Q*10^-3)

//Sample Problem 19-3b
printf("\n**Sample Problem 19-3b**\n")
Qg = 210*10^3 //in J
//Energy left after the ice comes to 0 degree C
Qleft = Qg - Q1
//the mass of ice left aftr all the heat is consumed
Mleft = Qleft/L
printf("The mass of ice left is equal to %fg", Mleft*10^3)
