//example-19.13
//page no-583
//given
//electron mobility
mue=1.065*10^-3  //m^2/V s
//relaxation time
tau=6*10^-15  //s
//charge on electron
e=1.6*10^-19  //C
//no of electrons
n=1 
//mass of electron
me=9.1*10^-31  //kg
//as we know that 
//mue=sigma*HC and sigma=n*e^2*tau/me
//so 
//mue=n*e^2*tau*HC/me
//from above equation we can get
HC=mue*me/n/e^2/tau   //V m^3/A Wb  
//condustivity
sigma=mue/HC  //per ohm m   (calculation mistake in book)
printf ("the hall coefficient is %e V m^3/A Wb and conductivity is %e per ohm m",HC,sigma)
