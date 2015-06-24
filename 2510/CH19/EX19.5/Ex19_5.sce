//Variable declaration:
w = 8                           //Width of wall (m)
H = 3                           //Height of wall (m)
h = 21                          //Convective heat transfer coefficient between the air and the surface (W/m^2.K)
T1 = -18                        //Outside surace of wall temperature ( C)
T3 = 26                         //Surrounding air temperature ( C)
l1 = 80/100                     //Reduction in cooling load
k = 0.0433                      //Thermal conductivity of cork board insulation (W/m.K)
T = 12000                       //Units Btu/h in 1 ton of refrigeration

//Calculation:
A = w*H                         //Heat transfer area (m^2) (part 1)
Q1 = h*A*(T1-T3)                //Rate of heat flow in the absence of insulation (W)
Q2 = Q1*3.4123/T                //Rate of heat flow in the absence of insulation (ton of refrigeration)
l2 = 1-l1                       //Reduced cooling load (part 2)
Q3 = l2*Q1                      //Heat rate with insulation (W)
Rt = (T1-T3)/Q3                 //Total thermal resistance ( C/W)
R2 = 1/(h*A)                    //Convection thermal resistance ( C/W)
R1 = Rt-R2                      //Insulation conduction resistance ( C/W)
L = R1*k*A                      //Required insulation thickness (m)

//Result:
printf("1. The rate of heat flow through the rectangular wall without insulation is : %.2f kW .",Q1/10**3)
printf("Or, the rate of heat flow through the rectangular wall without insulation in tons of refrigeration is : %.1f ton of refrigeration .",Q2)
if (Q1<0) then
    printf("The negative sign indicates heat flow from the surrounding air into the cold room.")
else
    printf(" The positive sign indicates heat flow from the surrounding air into the cold room.")
end    
printf("2. The required thickness of the insulation board is : %.2f mm .",L*10**3)
