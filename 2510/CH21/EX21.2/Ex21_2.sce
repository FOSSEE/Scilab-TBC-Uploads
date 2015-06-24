//Variable declaration:
//From example 21.1:
DSh = -0.2744                   //Entropy for hot fluid (Btu/ F)
DSc = 0.3795                    //Entropy for cold fluid (Btu/ F)
m = 1                           //Mass flowrate (lb)
cP = 1                          //Heat capacity (Btu/lb. F)
//From figure 21.4:
DT = 0                          //Temperature difference driving force ( F)
DS_D = 0                        //Entropy for D exchanger (Btu/ F)

//Calculation:
DS_C = DSh+DSc                  //Entropy for C exchanger (Btu/ F)
DSt = DS_C+DS_D                 //Total entropy change of exchangers (Btu/ F)

//Result:
printf("The total entropy change is : %f Btu/ F .",DSt)
