
clc
//Intialization of variables
sigmasquare = 0.014 // Slope of the graph
t = 150 // seconds
//Calculations
D = (sigmasquare/(2*t))*10^5 // in x*10^-5 cm^2/sec
//Results
printf("The value of diffusion co efficient is %.1f x10^-5 cm^2/sec",D)
