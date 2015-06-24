//Variable declaration:
R = 10.73                       //Universal gas constant (psia . ft^3/lbmol .°R)
T = 70+460                      //Temperature in Rankine scale (°R)
v = 10.58                       //Specific volume (ft^3/lb)
P = 14.7                        //Absolute pressure (psia)

//Calculation:
MW = R*T/v/P                    //Molecular weight of gas (lb/lbmol)

//Result:
printf("The molecular weight of the gas is : %.2f lb/lbmol.",MW)
printf("It appears that the gas is HCl (i.e., hydrogen chloride).")
