clear
//
//
//

//Variable declaration
e=1.602*10**-19
m=9.1*10**-31  //mass(kg)
tow=2*10**-14    //time(s)
n=8.5*10**28    

//Calculation
sigma=n*e**2*tow/m    //electrical conductivity(ohm-1 m-1)

//Result
printf("\n electrical conductivity is %0.1f  *10**7 ohm-1 m-1",sigma/10**7)
