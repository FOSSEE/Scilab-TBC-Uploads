
clear//
//

//Variable Declaration
A_AB=800 //Area of member AB in m^2
A_AC=400 //Area of member AC in m^2
W_AB=110 //Safe value of stress in Pa for AB
W_AC=120 //Safe value of stress in Pa for AC
theta1=60*3.14*180**-1 //Angle in radians
theta2=40*3.14*180**-1 //Angle in radians 

//Calculations
//Applying sum of forces 
//Solving by matrix method putting W as 1
A =[-cos(theta1),cos(theta2);sin(theta1),sin(theta2)]

B = [1;1]
C=inv(A)
D=C

//Using newtons third law
//Two values of W hence the change in the notation
W1=(W_AB*A_AB)*D(2,2)**-1 //Weight W in N
W2=(W_AC*A_AC)*D(1,2)**-1 //Weight W in N

//Result
printf("\n The maximum value of W allowable is %0.1f kN",W2*1000**-1)
