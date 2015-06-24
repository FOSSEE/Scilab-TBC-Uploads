//Initilization of variables
W=500 //N //weight of cylinder
alpha=25 //degree //angle made by OA with horizontal
beta=65 //degree //angle made by OB with horizontal
theta=90 //degree // theta=(alpha+beta)
//Calculations
Ra=(W*sind(beta))/sind(theta) //N //from equilibrium eq'n
Rb=(W*sind(alpha))/sind(theta) //N //from equilibrium eqn's
//Results
clc
printf('The reaction at A is %f N \n',Ra)
printf('The reaction at B is %f N \n',Rb)
