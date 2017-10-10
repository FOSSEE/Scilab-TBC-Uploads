clear
//Given
F=14.4*10**-4                       //N
d=0.05                              //m
F1=1.6*10**-4

//Calculation
//
u=4*%pi*10**-7
m=sqrt((F*4*%pi*d**2)/u)
d1=1/(sqrt((F1*4*%pi)/(u*m**2)))

//Result
printf("\n Distance is %0.3f  m",d1)
