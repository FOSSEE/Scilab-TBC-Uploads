clc
//Initialization of variables
c=2.998*10^10 //cm/s
wave=2990 //cm^-1
mu=1.627*10^-24 //g
//calculations
k=mu*(2*%pi*c*wave)^2
//results
printf("Force constant = %.2e dynes/cm",k)
