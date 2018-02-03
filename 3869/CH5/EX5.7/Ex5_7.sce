clear
//
//
//

//Variable declaration
n=1.55           //Core refractive index
L=10             //length(m)
delta=0.026      //relative refractive index difference
C=3*10**5

//Calculation
deltaT=L*n*delta/C         //total dispersion(s)
blp=L/(2*deltaT)           //bandwidth length product(Hz km)

//Result
printf("\n total dispersion is %0.1f  ns",deltaT*10**9)
printf("\n bandwidth length product is %0.2f  *10**5 Hz km",blp/10**5)
printf("\n answer for bandwidth length product given in the book is wrong")
