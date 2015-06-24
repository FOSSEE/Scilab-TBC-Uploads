//Variable declaration:
n = 1                           //Molar flow rate of gas (lbmol/h)
R = 10.73                       //Universal gas constant (ft^3.psi/lbmol.°R)
T = 60+460                      //Temperature in Rankine scale (°R)
P = 14.7                        //Absolute pressure of gas (psia)

//Calculation:
V = n*R*T/P                     //Volume of gas (ft^3)

//Result:
printf("The volume of given ideal gas is : %.1f ft^3",V)
