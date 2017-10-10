////Given
V=100                                    //ev
a=10                                     //degree
n=1

//Calculation
//
v=12.3/(sqrt(V))                   //De broglie wavelength
d=v/(2*sin(a*3.14/180.0))
n=(2*d)/v

//Result
printf("\n (a) Spacing between the crystal plane is  %0.2f A",d)
printf("\n (b) Peaks in the interference pattern is  %0.2f ",n)
printf("\n the largest possible value of n is 5")
