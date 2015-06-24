//Variable declaration:
D = 1.0                     //Diamete of vessel (ft)
L = 1.5                     //Length of vessel (ft)
T1 = 390.0                  //Surface temperature of vessel (°F)
T2 = 50.0                   //Surrounding temperature of vessel (°F)
h = 4.0                     //Convective heat transfer coefficient (Btu/h.ft.°F)
pi = %pi

//Calculation:
A = pi*D*L+2*pi*(D/2)**2    //Total heat transfer area (ft^2)
Q = h*A*(T1-T2)             //Rate of heat transfer (Btu/h)
R = 1/(h*A)                 //Thermal resistance (°F.h/Btu)

//Result:
printf("The thermal resistance of vessel wal is : %.4f  °F.h/Btu.",R)
