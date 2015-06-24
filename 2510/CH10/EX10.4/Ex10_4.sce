//Variable declaration:
//From Table 10.1:
c = 0.1                             //Constant c
m = 1.0/3.0                         //Constant for turbulent free conection
//From example 10.2:
Ra = 1.71*10**11                    //Rayleigh number
k = 0.029                           //Thermal conductivity (W/m.K)
L = 3.5                             //Thickness of plate (m)

//Calculation:
Nu = c*Ra**m                        //Average Nusselt number
h = Nu*k/L                          //Average heat transfer coefficient (W/m^2.K)

//Result:
printf("The average heat transfer coefficient is : %.1f W/m^2.K .",h)
