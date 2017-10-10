
//Variable declaration
H0=250*10**3;   //critical field(amp/m)
Tc=12;     //transition temperature(K)
Hc=200*10**3;   //critical field(Tesla)

//Calculation
T=Tc*sqrt(1-(Hc/H0)**2);    //temperature(K)

//Result
printf('temperature is %0.3f   K  \n',(T))