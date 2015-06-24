clc,clear
//Example 6.19
//to express an equation in polar coordinates

//Given equation is : y=x
y_by_x =1; //ratio of y and x
tan_theta = y_by_x;
theta=atand(tan_theta); //azimuth angle

printf('The given equation in polar coordinates is :  theta = %.0f degree\n',theta)
printf('\nNote: Polar form is same regardless of value of r ')
