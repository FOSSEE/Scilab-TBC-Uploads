//Variable declaration:
P = 14.7                    //Absolute pressure of air (psia)
MW = 29                     //Molecular weight of air (lb/lbmol)
T = 75+460                  //Temperature in Rankine scale (°R)
R = 10.73                   //Universal gas constant (ft^3.psi/lbmol.°R)

//Calculation:
p = P*MW/R/T                //Density of air (lb/ft^3)

//Result:
printf("The density of air at 75°F and 14.7 psia is : %.4f lb/ft^3",p)
