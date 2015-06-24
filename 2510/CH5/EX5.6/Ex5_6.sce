//Variable declaration:
P = 1.2                         //Abslute pressure of gas (psia)
MW = 29                         //Molecular weight of gas (g/gmol)
R = 82.06                       //Universal gas constant (atm.cm^3/gmol.K)
T = 20+273                      //Temperature in Kelvin (K)

//Calculation:
p = P*MW/R/T                    //Dendity of gas (g/cm^3)

//Result:
printf("The density of given gas is : %.5f g/cm^3",p)
