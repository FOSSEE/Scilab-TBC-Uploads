
//Variable declaration:
h1 = 1700                       //Steam heat-transfer coefficient (Btu/h.ft^2. F)
h2 = 2                          //Air heat-transfer coefficient (Btu/h.ft^2. F)
A = 1                           //Area of base (ft^2) (assumption)
k1 = 26                         //Thermal conductivity of steel (Btu/h.ft. F)
k2 = 218                        //Thermal conductivity of copper (Btu/h.ft. F)
t = 0.375                       //Thickness of steel sheet (in)
h3 = 2500                       //Increased steam heat-transfer coefficient (Btu/h.ft^2. F)
h4 = 12                         //Increased air heat-transfer coefficient (Btu/h.ft^2. F)

//Calculation:
R1 = 1/(h1*A)                   //Steam resistance (h. F/Btu)
R2 = 1/(h2*A)                   //Air resistance (h. F/Btu)
R3 = (t/12)/(k1*A)              //Steel resistance (h. F/Btu)
Rt1 = R1+R2+R3                  //Total resistance (with steel) (h. F/Btu)
R4 = (t/12)/(k2*A)              //Copper resistance (h. F/Btu) (part 1)
Rt2 = R1+R2+R4                  //Total resistance (with copper) (h. F/Btu)
R5 = 1/(h1*A)                   //New steam resistance (h. F/Btu)
Rt3 = R5+R2+R3                  //Total resistance after increasing the steam coefficient (h. F/Btu)
R6 = 1/(h4*A)                   //Air resistance (h. F/Btu)
Rt4 = R1+R6+R3                  //Total resistance after increasing the air coefficient (h. F/Btu)

//Result:
if (Rt1==Rt2) then
    printf("1.The rate of heat transfer is essentially unaffected.")
else
    printf("1. The rate of heat transfer is essentially affected.")
end
    
if (Rt1==Rt3) then
    printf("2. The rate is again unaffected.")
else 
    printf("2. The rate is again affected.")
end    
if (Rt1==Rt4) then
    printf("3. The rate is unaffected for this case.")
else 
    printf("3. The rate is affected for this case.")
end    
