//Variable declaration:
m = 50000                       //Mass flowrate of the organic fluid (lb/h)
cP = 0.6                        //The heat capacity of the organic liquid (Btu/lb. F)
T1 = 150                        //Initial temperature of organic fluid ( F)
T2 = 330                        //Final temperature of organic fluid ( F)
Ts1 = 358                       //Saturation temperature for 150 psia ( F)
Ts2 = 417                       //Saturation temperature for 300 psia ( F)
L1 = 863.6                      //Latent heat for 150 psia (Btu/lb)
L2 = 809                        //Latent heat for 300 psia (Btu/lb)
c1 = 5.20/1000                  //Cost for 150 psia ($/lb)
c2 = 5.75/1000                  //Cost for 300 psia ($/lb)
CI1 = 230                       //Cost index in 1998 
CI2 = 360                       //Cost index in 2011
IF = 3.29                       //Installation factor
PF1 = 1.15                      //Pressure factors for 100 to 200 psig
PF2 = 1.20                      //Pressure factors for 200 to 300 psig
OP = 90/100                     //Plant on-stream operation factor
h = 365*24                      //Hours in a year (h)

//Calculation:
Q = m*cP*(T2-T1)                //Overall heta duty (Btu/h)
DT1 = Ts1-T1                    //Temperature driving force 1 for 150 psia ( F)
DT2 = Ts1-T2                    //Temperature driving force 2 for 150 psia ( F)
LMTD1 = (DT1-DT2)/log(DT1/DT2)  //Log-mean temperature difference for 150 psia ( F)
DT3 = Ts2-T1                    //Temperature driving force 1 for 300 psia ( F)
DT4 = Ts2-T2                    //Temperature driving force 2 for 300 psia ( F)
LMTD2 = (DT3-DT4)/log(DT3/DT4)  //Log-mean temperature difference for 1300 psia ( F)
A1 = Q/(138*LMTD1)              //Required heat transfer area for 150 psia (ft^2)
A2 = Q/(138*LMTD2)              //Required heat transfer area for 300 psia (ft^2)
BC1 = 117*A1**0.65              //Base cost for 150 psia ($)
BC2 = 117*A2**0.65              //Base cost for 13000 psia ($)
C1 = BC1*(CI2/CI1)*IF*PF1       //Capital cost for 150 psia ($)
C2 = BC2*(CI2/CI1)*IF*PF2       //Capital cost for 300 psia ($)
S1 = Q*(h*OP)/L1                //Steam requirement for 150 psia (lb/yr)
S2 = Q*(h*OP)/L2                //Steam requirement for 300 psia (lb/yr)
SC1 = S1*c1                     //Annual steam cost for 150 psia ($/yr)
SC2 = S2*c2                     //Annual steam cost for 300 psia ($/yr)
C1 = round(C1*10**-3)/10**-3
C2 = round(C2*10**-3)/10**-3
SC1 = round(SC1*10**-3)/10**-3
SC2 = round(SC2*10**-3)/10**-3

//Result:
printf("1. The capital cost for 150 psia is : $ %f",C1)
printf("   The capital cost for 300 psia is : $ %f",C2)
printf("2. The annual steam cost for 150 psia is : $ %f /yr .",SC1)
printf("   The annual steam cost for 300 psia is : $ %f /yr .",SC2)
if (C1<C2 & SC1>SC2) then
    printf("The 300-psia exchanger costs less to purchase and install, but it costs more to operate. Choosing the more expensive, 150-psia exchanger is the obvious choice.")
else if (C1>C2 & SC1<SC2) then
    printf("The 150-psia exchanger costs less to purchase and install, but it costs more to operate. Choosing the more expensive, 300-psia exchanger is the obvious choice.")
end
