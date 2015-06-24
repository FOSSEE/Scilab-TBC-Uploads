//Variable declaration:
w = 0.2/100.0           //Width of fin (m)
t = 0.2/100.0           //Thickness of fin (m)
L = 1.0/100.0           //Length of fin (m)
h = 16.0                //Heat transfer coefficient (W/m^2.K)
k = 400.0               //Thermal conductivity of fin (W/m.K)
Tc = 100.0              //Circuit temperature ( C)
Ta = 25.0               //Air temperature ( C)

//Calculation:
P = 4*w                 //Fin cross-section parameter (m)
Ac = w*t                //Cross-sectional area of fin (m^2)
Lc = L+Ac/P             //Corrected height of fin (m)
m = sqrt((h*P)/(k*Ac))  //Location of minimum temperature (m^-1)
Q = (sqrt(h*P*k*Ac))*(Tc-Ta)*atan(h)*(m*Lc)     //Heat transfer from each micro-fin (W)

//Result:
printf("The heat transfer from each micro-fin is : %.2f W .",Q)
