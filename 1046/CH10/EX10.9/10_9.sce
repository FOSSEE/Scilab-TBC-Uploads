//Example10.9
//Page no. 449
//calculate   :  (i) time required for the cantre-line temp.
//to drop down to 200 C
//(ii)the temp. at half radius  at that moment
//(iii)the amount of heat that has been  transfered to the liquid
// by that time per  metre   length of the shaft
//given data
Ti=870                             //C, initial temp.
To=30                              //C, ambient  temp.
Tc=200                             //C, centre line temp.
h=2000                              //W/m^2 C, surface heat transfer coefficient
a=0.05                             //m, radius of cylinder 
k=20                               //W/m C, thermal conductivity
ro=7800                            //kg/m^3, density
cp=0.46*10^3                      //j/kg C,  specific heat

//calculation
//i
Bi=h*a/k                          //Biot no.
alpha=k/(ro*cp)                     //m^2/C, thermal diffusivity
Tcbar=(Tc-To)/(Ti-To)             // dimensionless centre line temp.
//from fig 10.7 a
fo=0.51                           //fourier  no. fo=alpha*t/a^2
t=fo*a^2/alpha                    //s, time

//ii
//at the half radius, r/a=0.5 & Bi=5
T=To+0.77*(Tc-To)                 //from fig. 10.7 b

//iii
x=Bi^2*fo
//for x =12.75 & Bi=5.0. fig.10.9 b gives
//q/qi=0.83
qi= %pi*a^2*(1)*ro*cp*(Ti-To)   //kj, initial amount of heat energy 
                                 //present in 1 m length of shaft
q=0.83*qi                        //j, amount of heat transfered 
printf("(i) time required for the cantre-line temp.to drop down to 200 C is %f s",t);
printf("(ii)the temp. at half radius  at that moment is %f C ",T);
printf("(iii)the amount of heat that has been  transfered to the liquid is  %f Kj",q*10^(-3));                                 

