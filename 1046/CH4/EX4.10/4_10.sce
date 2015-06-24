//Example 4.10
//calculate the length of heat exchanger.
//Given
dti=0.0212        //m inner tube
dto=0.0254        //cm, outer tube
dpi=0.035         //cm, outer pipe
mo_=500           //kh/h, cooling rate of oil
To2=110           //C, initial temo. of oil
To1=70            //C, temp. after cooling of oil
Tw2=40            //C, inlet temp. of water
Tw1=29            //C, outlet temp. of water
//properties of oil
cpo=0.478         //kcal/kg C
ko=0.12           //kcal/h m C, thermal conductivity
rho=850           //kg/m^3, density of oil
//properties of water
kw=0.542          //kcal/h m C, thermal conductivity
kw_=(kw*1.162)    //kj/kg C
muw=7.1*10^-4     //kg/ms, viscosity of water
cpw=1             //kcal/kg C
cpw_=cpw*4.17     //kcal/kg C
rhow=1000         //kg/m^3, density
//calculation
HL=mo_*cpo*(To2-To1)      //kcal/h, heat load of exchanger
mw_=HL/(cpw*(Tw2-Tw1))    //kg/h water flow rate
mw_1=mw_/(3600*10^3)      //m^3/s water flow rate
A1=(%pi/4)*(dti)^2        //m^2, flow area of tube
Vw=mw_1/A1                //m/s water velocity
Rew=dti*Vw*rhow/muw       //Reynold no.
Prw=cpw_*10^3*muw/kw_      //Prandtl no.
Nuw=0.023*Rew^0.8*Prw^0.4 //nusslet no.
//water side heat transfer coefficient   hi
hi=Nuw*kw/dti

//oil side heat transfer coefficient
A2=%pi/4*(dpi^2-dto^2)    //m^2, flow area of annulus
Vo=mo_/(3600*rho*A2)      //m/s velocity of oil
de=(dpi^2-dto^2)/dto      //m, equivalent dia of annulus
Tmo=(To2+To1)/2           //C,mean oil temp.
muoil=exp((5550/(Tmo+273))-19)  //kg/ms, viscosity of oil
Reo=de*Vo*rho/muoil
Pro=cpo*muoil*3600/ko     //prandtl no. for oil    

//assume (1st approximation)
Nuo=3.66
ho=Nuo*ko/de             //kcal/h m^2 c
L=1                      //assume length of tube
Ai=%pi*dti*L
Ao=%pi*dto*L
//overall heat transfer coefficient 1st approximation
Uo=1/(1/ho+Ao/(Ai*hi))
LMTD=((To2-Tw2)-(To1-Tw1))/(log((To2-Tw2)/(To1-Tw1)))
Ao1=HL/(Uo*LMTD)         //m^2, heat transfer area
Lt=Ao1/(%pi*dto)          //m, tube length
//from eq.  4.8
Nuo1=1.86*(Reo*Pro/(Lt/de))^(1/3)   //Nusslet no. 
ho1=Nuo1*ko/de
Tmw=(Tw1+Tw2)/2         //C, mean water temp.
//balancing heat transfer rate of oil and water

//average wall temp. Twall
Twall=((hi*dti*(-Tmw))-(ho1*dto*Tmo))/(-65.71216)
//viscosity of oil at this temp.
muwall=exp((5550/(Twall+273))-19)  //kg/ms, viscosity of oil
//Nusslet no. 
Nuo2=1.86*(Reo*Pro/(Lt/de))^(1/3)*(muoil/muwall)^0.14
ho2=Nuo2*ko/de
Uo2=1/((1/ho2)+(Ao/(Ai*hi)))
Ao2=HL/(Uo2*LMTD)
Lt_=Ao2/(%pi*dto)
printf("The tube length is %f m",Lt_)
