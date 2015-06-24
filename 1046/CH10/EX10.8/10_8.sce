//Example no. 10.8
//Page no. 444
//Calculate the bottom surface , mid plane ,top surface temperatures
//of the slab after 4 hours
//given
l=0.05                       //m,thickness of margarine  slab
ro=990                       //Kg/m^3, density of  margarine slab 
cp=0.55                      //Kcal/kg C, ddpecific heat of slab
k=0.143                      //kcal/h mC,   thermal conductivity of slab
Ti=4                         //C, initial temp
To=25                        //C, ambient temp.
t=4                          //hours, time
h=8                          //kcal/h m^2 C
//calculation
Fo=k*t/(ro*cp*l^2)          //, fourier no.
Bi=h*l/k                     //Biot no.
//from fig. 10.6 a
Tcbar=0.7                    //Tcbar=(Tc-To)/(Ti-To)
Tc=To+Tcbar*(Ti-To)          //C, centre temp.
//from fig 10.6 b
//(T-To)/(Tc-To)=0.382
T=0.382*(Tc-To)+To           //c,top surface temp.
//again from fig. 10.6 b
Tm=0.842*(Tc-To)+To          //, mid plane temp.
printf("The bottom surface temperature of given slab is %f C",Tc);
printf("The top surface temperature of given slab is %f C",T);
printf("The  mid plane temperature of given slab is %f C",Tm);


