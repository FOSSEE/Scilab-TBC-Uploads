////Given
m=9.1*10**-31                               //Kg
h=1.05*10**-34                              //Js
ev=1.6*10**-19
n1=1
n2=2 
n3=3
a=10**-10                                   //m

//Calculation
//
E1=((n1**2*%pi**2*h**2)/(8.0*m*a**2))/(1.6*10**-19)                    //ev
E2=n2**2*E1
E3=n3**2*E1

//Result 
printf("\n \n three lowest energy levels are  %0.1f ev %0.1f ev and  %0.2f ev",E1,E2,E3)
printf("\n their eigenfunctions are 1/10**-5*cos(pie*x/2*10**-10),1/10**-5*sin(pie*x/10**-10) and 1/10**-5*cos(3*pie*x/2*10**-10)")
