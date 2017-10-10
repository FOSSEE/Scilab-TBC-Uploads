////Given
clear
E=100                                    //ev
m=9.1*10**-31
e=1.6*10**-19
h=1.054*10**-34                            
x=10.0**-6                                 //m

//Calculation
//
p=sqrt(2*m*E*e)
p1=h/x
theta=p1/p

//Result
printf("\n uncertainty in the angle of emergence  %0.1f *10**-4 radians",theta*10**4)
printf("\n 4 seconds of arc")
