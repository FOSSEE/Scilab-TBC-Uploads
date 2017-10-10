////Given
L=10**-9                                         //Width in m
v=9.0*10**-9
h=1.054*10**-34                                  //Js
c=3*10**8                                        //m/s
m=9.1*10**-31
v1=(9.0+1)*10**-9
v2=(9.0-1)*10**-9

//Calculation
//
n=sqrt((4*c*m*(L**2))/(v*%pi*h))
n1=sqrt((4*c*m*(L**2))/(v1*%pi*h))
n2=sqrt((4*c*m*(L**2))/(v2*%pi*h))

//Result
printf("\n value of n is  %0.0f  When + sign is taken  %0.0f  when -ve sign is taken  %0.0f ",n,n2,n1)
