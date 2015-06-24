//Variable declaration:
m = 1                           //Mass flowrate (lb)
cP = 1                          //Heat capacity (Btu/lb. F)
//From figure 21.3:
T1 = 300                        //Temperature of hot fluid leaving exchanger ( F)
T2 = 540                        //Temperature of hot fluid entering exchanger ( F)
T3 = 60                         //Temperature of cold fluid leaving exchanger ( F)
T4 = 300                        //Temperature of cold fluid entering exchanger ( F)

//Calculation:
DSh = m*cP*log((T1+460)/(T2+460))      //Entropy for hot fluid (Btu/ F)
DSc = m*cP*log((T4+460)/(T3+460))      //Entropy for cold fluid (Btu/ F)
DSa = DSh+DSc                   //Entropy for one exchanger (Btu/ F)
DSt = DSa*2                     //Total entropy change (Btu/ F)

//Result:
printf("The entropy chage is : %.4f Btu/ F .",DSt)
if (DSt>0) then
    printf("There is a positive entropy change.")
else 
    printf("There is a negative entropy change.")
end    
