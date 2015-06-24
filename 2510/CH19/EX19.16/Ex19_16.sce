//Variable declaration:
ki = 0.44                       //Thermal conductivity of insulation (Btu/h.ft. F)
ho = 1.32                       //Air flow coefficient (Btu/h.ft^2. F)
OD = 2                          //Outside diameter of pipe (in)

//Calculation:
rc = (ki/ho)*12                 //Outer critical radius of insulation (in)
ro = OD/2                       //Outside radius of pipe (in)
L = rc-ro                       //Critical insulation thickness (in)

//Result:
printf("The outer critical radius of insulation is : %.0f in .",rc)
if ro<rc then
    printf("Since, ro<rc, the heat loss will increase as insulation is added.")
else 
    printf("Sice, ro>rc, the heat loss will decrease as insulation is added.")
end
