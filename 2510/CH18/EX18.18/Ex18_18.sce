//Variable declaration:
m1 = 144206                     //Mass flow rate of flue gas (lb/h)
cp = 0.3                        //Average flue gas heat capacity (Btu/lb. F)
T1 = 2050                       //Initial temperature of gas ( F)
T2 = 560                        //Final temperature of gas ( F)
T3 = 70                         //Ambient air temperature ( F)

//Calculation:
Q = m1*cp*(T1-T2)               //Duty rate (Btu/h)
//From appendix:
cpa = 0.243                     //Average ambient air heat capacity 70 F (Btu/lb. F)
MW = 29                         //Molecular weight of air at 70 F
Q5 = round(Q*10**-5)/10**-5
ma = Q5/(cpa*(T2-T3))  //Mass of air required (lb/h)
m2 = round(ma)/MW               //Moles of air required (lb mol/h)
m3 = round(ma)*13.32            //Volume of air required (ft^3/h)
ma = round(ma*10**-2)/10**-2
m2 = round(m2*10**-1)/10**-1
m3 = round(m3*10**-3)/10**-3

//Result:
printf("The mass of air required is : %f lb/h .",ma)
printf("The moles of air required is : %f lb mol/h .",m2)
printf("The volume of air required is : %f ft^3/h .",m3)
