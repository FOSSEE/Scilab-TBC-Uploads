
//Variable declaration
T=2.5;    //temperature(K)
H0=0.03;   //critical field(amp/m)
Tc=3.7;     //transition temperature(K)

//Calculation
Hc=H0*(1-(T/Tc)**2);   //critical field(Tesla)

//Result
printf('critical field is %0.3f    Tesla \n',(Hc))