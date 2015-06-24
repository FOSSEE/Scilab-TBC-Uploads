//variable initialization
h=6.63*10^-34                                     //planck's constant (joule*second)
c=3*10^8                                          //speed of light (meter/second)
lambda1=5000*10^-10                               //wavelength (meter)
lambda2=0.1*10^-10                                //wavelength (meter)

//Calculation of effective mass of photon:

//part(i): wavelength=5000 Å
m1=h/(lambda1*c);                                 //effective mass of photon of wavelength 5000 Å

//part(ii): wavelength=0.1 Å
m2=h/(lambda2*c);                                 //effective mass of photon of wavelength 0.1 Å

printf("\neffective mass of photon:\n\t(i) mass = %.2e kg\n\t(ii) mass = %.2e kg",m1,m2);
