
//Variable declaration
T=5;    //temperature(K)
H0=6.5*10**3;   //critical field(amp/m)
Tc=7.2;     //transition temperature(K)

//Calculation
Hc=H0*(1-(T/Tc)**2);   //critical field(Tesla)

//Result
printf('critical field is %0.3f  *10**3 A/m   \n',(Hc/10**3))