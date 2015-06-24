//Initilization of variables
P=50 //N
Q=100 //N
beta=150 //degree // angle between P & the horizontal
//Calculations
R=sqrt(P^2+Q^2-(2*P*Q*cosd(beta))) // using the Trignometric solution
Alpha=asind((sind(beta)*Q)/R)+15
//Result
clc
printf('The magnitude of resultant is %f Newton (N) \n',R)
printf('The direction of resultant is %f degree \n',Alpha)
