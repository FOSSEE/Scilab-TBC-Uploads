//Variable declaration:
Nf = 125                        //Array of fins per meter
w = 1                           //Length of fin (m)
//From example 17.15:
t = 4/10**3                     //Thickness of fin (m)
Do = 50/10**3                   //Outside diameter of tube (m)
Af = 7.157*10**-3               //Fin surface area (m^2)
h = 40                          //Heat transfer coefficient (W/m^2.K)
DTb = 180                       //Excess temperature at the base of the fin (K)
Qf = 50                         //Fin heat transfer rate (W)

//Calculation:
ro = Do/2                       //Radius of tube (m)
wb = w-Nf*t                     //Unfinned exposed base length (m)
Ab = 2*%pi*ro*wb                 //Area of the base of the fin (m^2)
At = Ab+Nf*Af                   //Total heat transfer surface area (m^2)
Qw = h*(2*%pi*ro*w)*DTb          //Heat rate without fin (W)
Qb = h*Ab*DTb                   //Heat rate from the base (W)
Qft = Nf*Qf                     //Heat rate from the fin (W)
Qt = Qb+Qft                     //Total heat rate (W)
Qm = h*At*DTb                   //Maximum heat transfer rate (W)
n = Qt/Qm                       //Overall fin efficiency
E = Qt/Qw                       //Overall fin effectiveness
Rb = 1/(h*Ab)                   //Thermal resistance of base ( C/W)
Rf = 1/(h*Nf*Af*n)              //Thermal resistance of fin ( C/W)

//Result:
printf("The rate of heat transfer per unit length of tube is : %.1f W .",Qt)
printf("Or, the rate of heat transfer per unit length of tube is : %.2f kW .",Qt/10**3)
printf("The overall fin efficiency is : %.1f %%",n*100)
printf("The overall fin effectiveness is : %.2f .",E)
