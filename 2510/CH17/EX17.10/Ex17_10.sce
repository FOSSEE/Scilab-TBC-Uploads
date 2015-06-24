//Variable declaration:
Do = 2.5/100                    //Outside diameter of tube (m)
t = 1/10**3                     //Thickness of fin (m)
T = 25                          //Fluid temperature ( C)
Tb = 170                        //Surface temperature ( C)
h = 130                         //Heat transfer coefficient (W/m^2.K)
k = 200                         //Thermal conductivity of fin (W/m.K)
rf = 2.75/100                   //Outside radius of fin (m)

//Calculation:
ro = Do/2                       //Radius of tube (m)
Ab = 2*%pi*ro*t                  //Area of the base of the fin (m^2)
Te = Tb-T                       //Excess temperature at the base of the fin (K)
Q1 = h*Ab*Te                    //Total heat transfer rate without the fin (W)
Bi = h*(t/2)/k                  //Biot number
L = rf-ro                       //Fin height (m)
rc = rf+t/2                     //Corrected radius (m)
Lc = L+t/2                      //Corrected height (m)
Ap = Lc*t                       //Profile area (m^2)
Af = 2*%pi*(rc**2-ro**2)         //Fin surface area (m^2)
Qm = h*Af*Te                    //Maximum fin heat transfer rate (W)
A = sqrt(Lc**3*h/(k*Ap))        //Abscissa of fin efficiency
C = rf/ro                       //Curve parameter of fin efficiency
//From figure 17.4:
nf = 0.86                       //Fin efficiency
Qf = nf*Qm                      //Fin heat transfer rate (W)
R = Te/Qf                       //Fin resistance (K/W)

//Result:
printf("1. The heat transfer rate without the fin is : %.2f W .",Q1)
printf("Or, the heat transfer rate without the fin is : %.0f Btu/h .",Q1*3.412)
printf("2. The corrected length is : %.4f m .",Lc)
printf("3. The outer radius is : %.3f m ",rc)
printf("4. The maximum heat transfer rate from the fin is : %.2f W .",Qm)
printf("5. The fin efficiency is : %.0f %%",nf*100)
printf("6. The fin heat transfer rate is : %.0f %%",Qf)
printf("Or, the fin heat transfer rate is : %.0f %%",Qf*3.412)
printf("7. The fin thermal resistance is : %.2f K/W .",R)
