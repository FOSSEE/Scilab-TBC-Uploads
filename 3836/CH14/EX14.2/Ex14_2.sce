clear
//
//Initialization
i=6                          //current in ampere
n=500                       //turns
l=0.4                      //circumference
uo=4*%pi*10**-7          //epsilon zero constant
a=300*10**-6                 //area

//Calculation
f=n*i                          //Magnetomotive Force
h=f/l                           //magnetic field strength
b=uo*h                          //magnetic induction
phi=b*a                          //flux

//Results
printf("\n (a) Magnetomotive Force, H = %.2f ampere-turns",f)

printf("\n (b) Magnetic Field Strength, H = %.2f A/m",h)

printf("\n (c B = %.2f mT",b*10**3)
printf("\n (d Toal Flux, phi = %.2f uWb",phi*10**6)
