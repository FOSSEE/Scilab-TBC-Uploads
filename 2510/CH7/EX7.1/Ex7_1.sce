//Variable declaration:
Q = 3000.0              //The rate of heat flow through the glass window (W)
L = 0.01                //Thickness of glass window (m)
A = 3.0                 //Area of heat transfer (m^2)
TC = 10+273             //Temperature at the outside surface (K)
k = 1.4                 //Thermal onductivity of glass (W/m.K)

//Calculation:
TH = TC+Q*L/k/A         //Temperature at the inner surface (K)

//Result:
printf("The temperature at the inner surface is : %.1f K",TH)
printf("The temperature at the inner surface is : %.1f °C",TH-273)
