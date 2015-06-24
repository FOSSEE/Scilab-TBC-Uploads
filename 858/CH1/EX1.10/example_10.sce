clc
clear 

printf('example 1.10 page number 33\n')

//to find relation between friction factor and reynold's number

//log f=y, log Re=x, log a=c
sigma_x=23.393;
sigma_y=-12.437;
sigma_x2=91.456
sigma_xy=-48.554;
m=((6*sigma_xy)-(sigma_x*sigma_y))/(6*sigma_x2-(sigma_x)^2);
printf("m = %f \n",m)

c=((sigma_x2*sigma_y)-(sigma_xy*sigma_x))/(6*sigma_x2-(sigma_x)^2);
printf("c = %f \n",c)

printf("f=0.084*Re^-0.256")
