//Variable declaration:
//From table 22.1:
QH1 = 12*10**6                  //Heat duty for process unit 1 (Btu/h)
QH2 = 6*10**6                   //Heat duty for process unit 2 (Btu/h)
QH3 = 23.5*10**6                //Heat duty for process unit 3 (Btu/h)
QH4 = 17*10**6                  //Heat duty for process unit 4 (Btu/h)
QH5 = 31*10**6                  //Heat duty for process unit 5 (Btu/h)
T1 = 90                         //Supply water temperature ( F)
T2 = 115                        //Return water temperature ( F)
cP = 1                          //Cooling water heat capacity (Btu/(lb. F))
p = 62*0.1337                   //Density of water (lb/gal)
BDR = 5/100                     //Blow-down rate

//Calculation:
QHL = (QH1+QH2+QH3+QH4+QH5)/60  //Heat load (Btu/min)
DT = T2-T1                      //Change in temperature ( F)
qCW = round(QHL*10**-5)/10**-5/(DT*cP*p)   //Required cooling water flowrate (gpm)
qBD = BDR*qCW                   //Blow-down flow (gpm)
qCW = round(qCW*10**-1)/10**-1

//Result:
printf("The total flowrate of cooling water required for the services is : %f gpm.",qCW)
printf("The required blow-down flow is : %.0f gpm.",qBD)
