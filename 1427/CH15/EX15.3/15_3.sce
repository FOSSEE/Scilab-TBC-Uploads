//ques-15.3
//Determining composition of equilibrium mixture
clc
a=1;//moles of acid
b=8;//moles of alcohol
Kc=4;//equilibrium constant
//Solving, 3*x^2-36*x+32 = 0
D=36^2-4*3*32;//discriminant
x=(36-sqrt(D))/(2*3);
printf("Final content of acid, alcohol, salt and water are %.3f, %.3f, %.3f and %.3f moles respectively.",a-x,b-x,x,x);
