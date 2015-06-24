//Given that
deltaT = 1.10  //in sec
x = 4.00*10^8  //in meter
c = 3*10^8 //in m/s
r = 0.980

//Sample Problem 38-4
printf("**Sample Problem 38-4**\n")
y = 1/sqrt(1-r^2)
Xe = y*(x - r*c*deltaT)
printf("The distance in earth frame is %1.2em\n", Xe)
Te = y*(deltaT - r*x/c)
printf("The time interval in earth frame is %1.2f", Te)