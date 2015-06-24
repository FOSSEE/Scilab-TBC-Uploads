//Variable declaration:
A = 1.0                         //Surface area of glass (m^2)
h1 = 11.0                       //Heat transfer coefficient inside room (W/m^2.K)
L2 = 0.125*0.0254               //Thickness of glass (m)
k2 = 1.4                        //Thermal conductivity of glass (W/m.K)
h3 = 9.0                        //Heat transfer coefficient from window to surrounding cold air (W/m^2.K)

//Calculation:
R1 = 1.0/(h1*A)                 //Internal convection resistance (K/W)
R2 = L2/(k2*A)                  //Conduction resistance through glass panel (K/W)
R3 = 1.0/(h3*A)                 //Outside convection resistance (K/W)
Rt = R1+R2+R3                   //Total thermal resistance (K/W)
U = 1.0/(A*Rt)                  //Overall heat transfer coefficient (W/m^2.K)

//Result:
printf("The overall heat transfer coefficient is : %.1f W/m^2.K.",U)
