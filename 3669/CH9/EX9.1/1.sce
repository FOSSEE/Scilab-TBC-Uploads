
//Variable declaration
T=8;    //temperature(K)
Hc=1*10**5;   //critical field(amp/m)
H0=2*10**5;   //critical field(amp/m)

//Calculation
Tc=T/sqrt(1-(Hc/H0));     //transition temperature(K)

//Result
printf('transition temperature is %0.3f   K  \n',(Tc))