//example-19.14
//page no-583
//given
//electron mobility
mue=1.065*10^-3   //m^2/Vs
//relaxation time
tau=6*10^-15  //sec
//charge on an electron
e=1.6*10^-19  //C
//mass of electron
me=9.1*10^-31  //Kg
n=1
//as we know that
//mue=sigma*Hc and sigma=n*e^2*tau/me
//so 
//mue=n*e^2*tau*Hc/me
//upon rearrangement
Hc=mue*me/n/e^2/tau   
//and  
sigma=mue/Hc   //(ohm m)^-1  //(ohm m)^-1  (calulation mistake is there in book)
printf ("the hall coefficent is %e \n and conductivity of Al sample is %e (ohm m)^-1 ",Hc,sigma)
