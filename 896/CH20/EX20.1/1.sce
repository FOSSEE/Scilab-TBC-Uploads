clc
//Example 20.1
//Calculate first derivative and second derivative of the fluid flow
y_fd2=0.4336//m
y_fd1=0.4375//m
delta_yfd=y_fd2-y_fd1//m
x_fd2=0.75//m
x=0.5//m
delta_xfd=x_fd2-x//m
y_bd2=0.4375//m
y_bd1=0.2461//m
delta_ybd=y_bd2-y_bd1//m
x_bd1=0.25//m
delta_xbd=x-x_bd1//m
//Let D denote d/dx and D2 denote d^2/dx^2
Dy_fd=delta_yfd/delta_xfd//dimentionless
Dy_bd=delta_ybd/delta_xbd//dimentionless
Dy=(Dy_fd+Dy_bd)/2//dimentionless
printf("The first derivative of fluid flow is %f\n",Dy);
D2y=(Dy_fd-Dy_bd)/delta_xfd//dimentionless
printf("The second derivative of fluid flow is %f",D2y);