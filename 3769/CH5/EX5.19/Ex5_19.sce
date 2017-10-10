clear
//Given
m=0.45                         //Kg
R=0.0014                        //ohm
a=1.78*10**-8                   //ohm
d=8.93*10**3                       //Kg/m**3

//Calculation
//
l=sqrt(R*m/(a*d))
r=sqrt(m/(%pi*d*1.99))

//Result
printf("\n The value of length is %0.2f  m",l)
printf("\n The value of radius is  %0.2f  mm",r*10**3)
