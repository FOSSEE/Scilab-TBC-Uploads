//Variable declaration:
D = 5                       //Diameter of pipe (ft)
V = 10                      //Fluid velocity (ft/s)
p = 50                      //Fluid density (lb/ft^3)
u = 0.65                    //Fluid viscosity (lb/ft.s)
F = 1.0/12.0                //Feet in an inch
VCp = 6.72*10**-4           //Viscosity of centipoise (lb/ft.s)
 
//Calculation:
A = D*V*p*F/u/VCp           //Reynolds Number
 
//Result:
if(A>2100) then
    printf("The Reynolds number is :%.0f  therefore, the flow is turbulent.",A)
else
    if(A<2100) then
     printf("The Reynolds number is : %f therefore, the flow is not turbulent.",A)
end
end;
