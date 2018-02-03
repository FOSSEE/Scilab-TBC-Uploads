//finding the inclination of the plane and coefficient of friction
//refer fig 5.7 
//consider equilibrium of system
//Case (a)
//N=500*cosd(theta)
//Using law of friction
//F1=mu*N
//500*sind(theta)-500*mu*cosd(theta)=200
//Case (b)
//N=500*cosd(theta)
//usin law of friction
//F2=mu*N
//500*mu*cosd(theta)+500*sind(theta)=300
//add final equations from both cases
theta=asind(0.5)  //degree
//substitute this value in final equation from case (b)
mu=(50)/(500*cosd(30))  
printf("\ntheta=%.2d degree\nmu=%0.3f",theta,mu) 
