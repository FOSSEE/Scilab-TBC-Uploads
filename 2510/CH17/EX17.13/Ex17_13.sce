//Variable declaration:
w = 1                           //Width of single of fin (m)
t = 2/10**3                     //Fin base thickness (m)
l = 6/10**3                     //Fin length thickness (m)
T1 = 250                        //Surface temperature ( C)
T2 = 20                         //Ambient air temperature ( C)
h = 40                          //Surface convection coefficient (W/m^2.K)
k = 240                         //Thermal conductivity of fin (W/m.K)

//Calculation:
Ab = t*w                        //Base area of the fin (m^2)
Te = T1-T2                      //Excess temperature at the base of the fin (K)
Qw = h*Ab*Te                    //Heat transfer rate without a fin (W)
Af = 2*w*(sqrt(l**2-(t/2)**2))  //Fin surface area (m^2)
Qm = h*Af*Te                    //Maximum heat transfer rate (m^2)
Bi = h*(t/2)/k                  //Biot number
Lc = l                          //Corrected length (m)
Ap = l*t/2                      //Profile area (m^2)
A = sqrt((Lc**3*h)/k*Ap)        //Abscissa for the fin efficiency figure
//From figure 17.4:
nf = 0.99                       //Fin efficiency
Qf = nf*Qm                      //Fin heat transfer rate (W)
R = Te/Qf                       //Fin thermal resistance (K/W)
E = Qf/Qw                       //Fin effectiveness
Qm = round(Qm*10**-1)/10**-1

//Result:
printf("1. The heat transfer rate without the fin is : %.1f W .",Qw)
printf("2. The maximum heat transfer rate from the fin is : %f W .",Qm)
printf("3. The fin efficiency is : %.0f %%",nf*100)
printf("   The fin thermal resistance is : %.1f C/W .",R)
printf("   The fin effectiveness is : %.1f .",E)
