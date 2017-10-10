//Variable declaration
y=1/100;    //percentage of probability
x=0.5*1.6*10**-19;     //energy(J)
k=1.38*10**-23;       //boltzmann constant

//Calculation
xbykT=log((1/y)-1);
T=x/(k*xbykT);       //temperature(K)

//Result
printf('temperature is %0.3f K ',int(T))
printf('answer varies due to ing off errors')