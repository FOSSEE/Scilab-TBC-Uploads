//Variable declaration:
Do = 50/10**3                   //Outside diameter of tube (m)
t = 4/10**3                     //Thickness of fin (m)
T = 20                          //Fluid temperature ( C)
Tb = 200                        //Surface temperature ( C)
h = 40                          //Heat transfer coefficient (W/m^2.K)
k = 240                         //Thermal conductivity of fin (W/m.K)
l = 15/10**3                    //Length of fin (m)

//Calculation:
ro = Do/2                       //Radius of tube (m)
rf = ro+l                       //Outside radius of fin (m)
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
nf = 0.97                       //Fin efficiency
Qf = nf*Qm                      //Fin heat transfer rate (W)
R = Te/Qf                       //Fin resistance (K/W)
E = Qf/Q1                       //Fin effectiveness

//Result:
printf("The fin efficiency is : %.0f %%",nf*100)
printf("The fin thermal resistance is : %.1f C/W.",R)
printf("The fin effectiveness is : %.2f .",E)
printf("The maximum heat transfer rate from a single fin is : %.2f W .",Qm)
if E>2 then
    printf("Since Ef = FCP>2, the use of the fin is justified.")
end    
