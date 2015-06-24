clc;
warning("off");
printf("\n\n example6.2 - pg202");
// given
p=0.99568*62.43;  //[lb/ft^3] - density of water at 86degF
mu=0.8007*6.72*10^-4;  //[lb/ft*sec] - viscosity of water at 86degF
u=4.78;  //[ft/sec] - free stream velocity 
Nre=5*10^5;  // the lower limit for the transition reynolds number range is substituted
x=(Nre*mu)/(p*u);
disp(x,"x");
printf("\nThus the transition could star at about %fft.The reynolds number at the upper end of the transition range is %e.The value of x at this location is ten times then the value obtained above i.e %fft",x,Nre*10,x*10); 