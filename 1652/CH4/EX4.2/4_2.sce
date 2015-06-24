clc
//Initialization of variables
ma=1.0080
mb=35.457
Na=6.0232*10^23
I=2.707*10^-40 //g cm^2
//calculations
mu1=ma*mb/(ma+mb)
mu2=mu1/Na
r=sqrt(I/mu2)
//results
printf("Bond length = %.2e cm",r)
