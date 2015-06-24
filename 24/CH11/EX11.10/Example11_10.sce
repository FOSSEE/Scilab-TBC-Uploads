//Given that
m = 1  //(say)
R = 0.15  //in meter
L = 2.0 * R
g =  9.8  //in m/s^2

//Sample Problem 11-10
printf("**Sample Problem 11-10**\n")
I = 0.5*m*R^2 + m*L^2/12 + m*(L/2+R)^2
deltaU = m* g* (L + 2*R)
//deltaK = 0.5*I*w^2
//therefore-
w = sqrt(deltaU/(0.5*I))
printf("The angular speed is equal to %frad/s", w)