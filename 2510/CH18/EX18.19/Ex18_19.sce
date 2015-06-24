//Variable declaration:
//From example 18.19:
m1 = 144200                     //Mass flow rate of flue gas (lb/h)
m2 = 541700                     //Mass flow rate of air (lb/h)
R = 0.73                        //Universal gas constant (psia.ft^3/lbmol. R)
P = 1                           //Absolute pressure (psia)
T = 1020                        //Absolute temperature ( R)
MW = 29                         //Molecular weight of air
t = 1.5                         //Residence time (s)

//Calculation:
m = m1+m2                       //Total mass flow rate of the gas (lb/h)
q = m*R*T/(P*MW)                //Volumetric flow at 560 F (ft^3/h)
V = q*t/3600                    //Volume of tank (ft^3)
m = round(m*10**-2)/10**-2

//Result:
printf("The total mass flow rate of the gas is : %f lb/h .",m)
printf("The volumetric flow at 560 F is : %.2f  x 10^7 ft^3/h",q/10**7)
printf("The volume of tank is : %.0f ft^3 .",V)
