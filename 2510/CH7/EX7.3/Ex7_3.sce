//Variable declaration:
TH = 1592.0                     //Temperature of inside surface (K)
TC = 1364.0                     //Temperature of outside surface (K)
H = 3.0                         //Height of furnace wall (m)
W = 1.2                         //Width of furnace wall (m)
L = 0.17                        //Thickness furnace wall (m)
m = 0.0929                      //Meter square per second in a feet square per second
Btu = 3.412                     //Btu per hour in a Watt
Btu2 = 0.3171                   //Btu per feet square hour in a watt per meter square

//Calculation:
Tav = (TH+TC)/2                 //Average wall temperature (K)
//From Table in Appendix:
p = 2645.0                      //Density of material (kg/m^3)
k = 1.8                         //Thermal conductivity (W/m.K)
Cp = 960.0                      //Heat capacity of material (J/kg.K)
a = k/(p*Cp)/m                  //Thermal diffusivity (ft^2/s)
t = (TC-TH)/L                   //Temperature gradient (°C/m)
A = H*W                         //Heat transfer area (m^2)
Q1 = k*A*(TH-TC)/L*Btu          //Heat transfer rate (Btu/h)
Q2 = k*(TH-TC)/L*Btu2           //Heat transfer flux (Btu/h.ft^2)
R = L/(k*A)                     //Thermal resistance (°C/W)

//Result:
printf("The temperature gradient is : %.0f °C/m.",t)
printf("The heat transfer rate is : %.0f Btu/h",Q1)
printf("The heat transfer flux is : %.1f Btu/h.ft^2.",Q2)
