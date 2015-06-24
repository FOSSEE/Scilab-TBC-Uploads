//Variable declaration:
w = 1                           //Length of tube (m)
S = 10/10**3                    //Fin patch (m)
//From example 17.10:
t = 1/10**3                     //Thickness of fin (m)
ro = 0.0125                     //Radius of tube (m)
Af = 3.94*10**-3                //Fin surface area (m^2)
Tb = 145                        //Excess temperature at the base of the fin (K)
h = 130                         //Heat transfer coefficient (W/m^2.K)
Qf = 64                         //Fin heat transfer rate (W)

//Calculation:
Nf = w/S                        //Number of fins in tube length
wb = w-Nf*t                     //Unfinned base length (m)
Ab = 2*%pi*ro*wb                 //Unfinned base area (m^2)
At =Ab+Nf*Af                    //Total transfer surface area (m^2)
Qt = h*(2*%pi*ro*w*Tb)           //Total heat rate without fins (W)
Qb = h*Ab*Tb                    //Heat flow rate from the exposed tube base (W)
Qft = Nf*Qf                     //Heat flow rate from all the fins (W)
Qt2 = Qb+Qft                    //Total heat flow rate (W)
Qm = h*At*Tb                    //Maximum heat transfer rate (W)
no = Qt2/Qm                     //Overall fin efficiency
Eo = Qt2/Qt                     //Overall effectiveness
Rb = 1/(h*Ab)                   //Thermal resistance of base (K/W)
Rf = 1/(h*Nf*Af*no)             //Thermal resistance of fins (K/W)

//Result:
printf("1. The total surface area for heat transfer is : %.3f m^2 .",At)
printf("2. The exposed tube base total heat transfer rate is : %.1f W .",Qb)
printf("Or, the exposed tube base total heat transfer rate is : %.0f Btu/h .",Qb*3.412)
printf("3. The overall efficiency of the surface is : %.1f %%",no*100)
printf("4. The overall surface effectiveness is : %.2f .",Eo)
