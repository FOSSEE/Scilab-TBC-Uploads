clc,clear
//Example 6.4
//To solve the given equation

//Given equation is cos_theta = tan_theta
//simplyfying given equation, we get
//(sin_theta)^2 + sin_theta - 1 = 0
//Solve for sin_theta as follows
p=[1 1 -1]
sin_theta= roots(p)
printf('Values of sin(theta) after simplifying and solving = %f and %f\n',sin_theta(1),sin_theta(2))
printf('Eliminate %f as sin_theta cant be below -1',sin_theta(1))

//Since sin_theta is +ve, 2 solutions exist. in 1st and 2nd quadrant
theta_1=asin(sin_theta(2));  //in 1st quadrant
theta_2=%pi-asin(sin_theta(2));//the reflection in 2nd quadrant

printf('\n\nSOLUTIONS:\n')
printf('%f radians\n%f radians',theta_1,theta_2)

printf('\n\nGENERAL SOLUTIONS:\n')
printf('%f + integer multiples of 2pi \n',theta_1)
printf('%f + integer multiples of 2pi \n',theta_2)
