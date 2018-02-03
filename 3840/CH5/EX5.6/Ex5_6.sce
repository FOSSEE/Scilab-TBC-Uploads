clear
//
//
//

//Variable declaration
D=8.92*10**3     //density(kg/m**3)
rho=1.73*10**-8    //resistivity(ohm m)
W=63.5    //atomic weight
Na=6.02*10**26    //avagadro number
e=1.6*10**-19      //charge(c)

//Calculation
n=D*Na/W
mew=1/(rho*n*e)      //mobility(m**2/Vs)

//Result
printf("\n mobility is %0.5f  m**2/Vs",mew)
printf("\n answer given in the book is wrong")
