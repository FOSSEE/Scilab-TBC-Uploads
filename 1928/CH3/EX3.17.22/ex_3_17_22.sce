//Chapter-3,Example3_17_22,pg 3-43

ur=1                                    //relative permeability of air

u0=4*%pi*10^-7                          //permeability of free space

A=6*10^-4                               //cross section area of torroid

n=500                                   //number of turns

r=15*10^-2                              //radius of torroid

I=4                                     //current in coil

l=2*%pi*r                               //mean circumference of torroid

MMF=n*I

printf("1) MMF (NI) =")

disp(MMF)

printf("AT")

R=l/(u0*ur*A)                           //Reluctance

printf("       2) Reluctance (R) =")

disp(R)

printf("AT/Wb")

phi=MMF/R                               //flux

printf("    3) Magnetic flux =")

disp(phi)

printf("Wb")

B=phi/A                                 //flux density

printf("       4) Flux density =")

disp(B)

printf("Wb/m^2")

H=B/(u0*ur)                             //magnetic field intensity

printf("   5) Magnetic field intensity =")

disp(H)

printf("A/m")
