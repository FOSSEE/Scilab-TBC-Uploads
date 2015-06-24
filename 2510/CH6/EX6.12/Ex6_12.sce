//Variable declaration:
q = 0.486                       //Flow rate of fluid (ft^3/s)
D = 2.0/12.0                    //Diameter of tube in feet (ft)
pi = 3.14                       //Value of pi
p = 70.0                        //Density of fluid (lb/ft^3)
u = 0.1806                      //Viscosity of fluid (lb/ft)

//Calculation:
V = 4*q/pi/D**2                 //Flow velocity (ft/s)
Re = D*V*p/u                    //Reynolds Number

//Result:
if(Re<2100) then
    printf("The flow is laminar.")
elseif(Re>2100) then
    printf("The flow is turbulant.")
end
