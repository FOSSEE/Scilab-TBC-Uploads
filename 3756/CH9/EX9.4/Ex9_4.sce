clc
//
//
//

//Variable declaration
L0=20           //The distance of the star
v=0.95          //velocity

//Calculations
t=L0/v
L=L0*sqrt(1-v**2)
L=(L)

t1=(L*3*10**8)/(v*3*10**8)

//Result
printf("\n (1) The time taken on earth (t) =  %0.2f year",t)
printf("\n (2) The time taken on spaceship  (t1) =  %0.2f year",t1)
