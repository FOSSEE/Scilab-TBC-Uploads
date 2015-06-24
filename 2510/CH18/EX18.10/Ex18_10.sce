//Variable declaration:
T1 = 2000                       //Hot gas temperature ( F)
T2 = 550                        //Cool gas temperature ( F)
T3 = 330                        //Steam temperature ( F)
T4 = 140                        //Water temperature ( F)
m = 30000                       //Mass flow rate of steam (lb/h)
cp = 0.279                      //Average heat capacity of gas (Btu/lb. F)
N = 800                         //Number of boiler tubes

//Calculation:
DT = (T1-T3)/(T2-T3)            //Temperature difference ratio
Tav = (T1+T2)/2                 //Average gas temperature ( F)
//From steam tables (Appendix):
hs = 1187.7                     //Steam enthalpy (Btu/lb)
hw = 107.89                     //Water enthalpy (Btu/lb)
Q = m*(hs-hw)                   //Heat duty (Btu/h)
mh = Q/cp*(T1-T2)               //Mass flow rate of gas (lb/h)
x = mh/N                        //Gas mass flow rate per tube (lb/h)
//From figure 18.5:
L = 15                          //Length of boiler tubes (ft)

//Result:
printf("The length of boiler tubes is : %f ft .",L)
