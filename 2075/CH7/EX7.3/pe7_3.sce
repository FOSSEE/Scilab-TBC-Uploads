//example 7.3 
clc; funcprot(0);
// Initialization of Variable
Id=500;//load current
i=134;//mA
D=.42;//duty cycle
//calculation
Ip=Id+i/2;
Im=Id-i/2;
I1=((D/3)*(Ip^2+Im*Ip+Im^2))^.5;
disp(I1,"rms current in mA:")
printf('by trapezium method')
I2=D^.5*Id;
disp(I2,"rms current in mA:")
printf('by rectangle method')
printf('\n rectangle method gives good result than trapezium method')
clear()
