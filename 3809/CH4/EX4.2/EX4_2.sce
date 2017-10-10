//Chapter 4, Example 4.2

clc
//Initialisation
eo=8.85*10^-12              //dielectric constant
er=100                    //relative permittivity
a=10*10^-3*25*10^-3       //area in metre
d=7*10^-6                 //distance between plates




//Calculation
c=(eo*er*a)/d                  //capacitance in farad



//Results
printf("Capacitance, C = %.1f nF",c*10^9)
