
//Variable declaration:
T1 = 1800                       //Hot gas temperature ( F)
T2 = 500                        //Cool gas temperature ( F)
//From steam tables:
Tw = 312                        //Boiling point of water at 80 psia ( F)
m1 = 120000                     //Mass flow rate of flue gas (lb/h)
D = 2/12                        //Inside diameter of tube (ft)
cp = 0.26                       //Average heat capacity of flue gas (Btu/lb. F)

//Calculation:
DT = (T1-Tw)/(T2-Tw)            //Temperature difference ratio
Tav = (T1+T2)/2                 //Average gas temperature ( F)
//From figure 18.4:
x = 150                         //Gas mass flow rate per tube (m/N) (lb/h)
N = m1/x                        //Number of tubes
L = 21.5                        //Length of tubes (ft)
A = N*L*D                       //Total heat transfer area (ft^2)
Q = m1*cp*(T1-T2)               //Heat duty (Btu/h)
//From steam tables (Appendix):
hs = 1183.1                     //Steam enthalpy at 80 psia (Btu/lb)
hw = 168.1                      //Water enthalpy at 200 F (Btu/lb)
m2 = Q/(hs-hw)                  //Mass flow rate of water (lb/h)
m2 = round(m2*10**-4)/10**-4

//Result:
printf("The required heat transfer area is : %.0f ft^2 .",A)
printf("The tube length is : %f ft .",L)
printf("The heat duty is : %.2f x 10^7 .",Q/10**7)
printf("The water mass flow rate is : %f lb/h .",m2)
