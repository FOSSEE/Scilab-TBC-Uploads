
clc
//initialization of variables
D1 = 1.26*10^-5 // for x1=1 , D0 value in cm^2/sec
x1 = 0.5
D2 = 4.68*10^-5 // for x2=1 , D0 Value in cm^2/sec
x2 = 0.5
k = -0.69 // dlngamma1/dx1 value given
//Calculations
D0 = ((D1)^x1)*((D2)^x2)*10^5 // x*10^-5 cm^2/sec
D = D0*(1+k) // Diffusion coefficient in x*10^-5 cm^2/sec
//Results
printf("The diffusion coefficent is %.2f x10^-5 cm^2/sec",D)
