clear
//Initialization
l=25*10**-3            //length in meter
b=10*10**-3            //breadth in meter
d=7*10**-6            //distance between plates in meter
e=100                  //dielectric constant of material
e0=8.85*10**-12         //dielectric constant of air       

//Calculation
c=(e0*e*l*b)*d**-1        //Capacitance
//Results
printf("\n Capacitance, C = %.1f nF",c*10**9)

