//Variable declaration:
rfo = 12/2                      //Outside radius of firebrick (ft)
rfi = 5.167                     //Inside radius of firebrick (ft)
rso = 6.479                     //Outside radius of sil-o-cel (ft)
rsi = 6.063                     //Inside radius of fsil-o-cel (ft)
L = 30                          //Length of incinerator (ft)
kf = 0.608                      //Thermal conductivity of firebrick (Btu/h.ft. F)
ks = 0.035                      //Thermal conductivity of sil-o-cel (Btu/h.ft. F)

//Calculation:
Rf= log(rfo/rfi)/(2*%pi*L*kf)    //Resistance of firebrick (h.ft. F/Btu)
Rs= log(rso/rsi)/(2*%pi*L*ks)    //Resistance of sil-o-cel (h.ft. F/Btu)
R = Rf+Rs                       //Total resistance (h.ft. F/Btu)
ro = exp(R*(2*%pi*L*ks))*rso     //New outside radius of sil-o-cel (ft)
r= ro-rso                       //Extra thickness (ft)

//Result:
printf("The extra thickness is : %.3f ft",r)
printf("Or, the extra thickness is : %.2f in.",r*12)
