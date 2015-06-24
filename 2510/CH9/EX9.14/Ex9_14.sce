//Variable declaration:
k = 60.0                    //Thermal conductivity of rod (W/m.K)
p = 7850.0                  //Density of rod (kg/m^3)
Cp = 434.0                  //Heat capacity of rod (J/kg.K)
h = 140.0                   //Convection heat transfer coefficient (W/m^2.K)
D = 0.01                    //Diameter of rod (m)
kf = 0.6                    //Thermal conductivity of fluid (W/m.K)
L = 2.5                     //Length of rod (m)
Ts = 250.0                  //Surface temperature of rod (°C)
Tf = 25.0                   //Fluid temperature (°C)

//Calculation:
//Case 1:
a = k/(p*Cp)                //Thermal diffusivity of bare rod (m^2/s)
//Case 2:
Nu = h*D/kf                 //Nusselt number
//Case 3:
Bi = h*D/k                  //Biot number of bare rod
//Case 4:
Q = h*(%pi*D*L)*(Ts-Tf)      //Heat transferred from rod to fluid (W)

//Result:
printf("1. The thermal diffusivity of the bare rod is : %.2f  x 10^-5 m^2/s.",a/10**-5)
printf("2. The nusselt number is : %.2f .",Nu)
printf("3. The Biot number is : %.4f .",Bi)
printf("4. The heat transferred from the rod to the fluid is : %.0f  W.",Q)
