//Variable declaration
e=1.6*10**-19;
Eg=0.72;    //band gap(eV)
k=1.38*10**-23;    //boltzmann constant
T1=293;     //temperature(K)
T2=313;     //temperature(K)
sigma1=2;    //conductivity(mho m-1)

//Calculation
x=(Eg*e/(2*k))*((1/T1)-(1/T2));
y=(x/2.303);
z=(log10(sigma1));
log_sigma2=y+z;
sigma2=10**log_sigma2;     //conductivity(mho m-1)

//Result
printf('conductivity is %0.3f   mho m-1     \n',(sigma2))