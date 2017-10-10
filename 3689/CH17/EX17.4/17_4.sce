////Variable Declaration
D = 2.2e-5                 //Diffusion coefficient of benzene, cm2/s 
x0 = 0.3                   //molecular diameter of benzene, nm

//Calculations
t = (x0*1e-9)**2/(2*D*1e-4)

//Results
printf("\n Time per random walk is %4.3e s or %4.2f ps",t,t/1e-12)

