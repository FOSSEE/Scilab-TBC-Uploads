//Given that
m = 6.0  //in kg
Vo = 7.8  //in m/s
Yo = 8.5  //in meter
Y = 11.1  //in meter
g = 9.8  //in m/s^2

//Sample Problem 8-8
printf("**Sample Problem 8-8**\n")
//initial mechanical energy
Mi = .5* m* Vo^2 + m* g* Yo
//final mechanical energy
Mf = 0 + m* g* Y
Eth = Mi - Mf
printf("The thermal energy generated is equal to %fJ", Eth)