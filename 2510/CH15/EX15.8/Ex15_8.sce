//Variable declaration:
uC = 3.7*10**-4                            	    //Viscosity of benzene (lb/ft.s)
uH = 2.05*10**-4                          	    //Viscosity of water @200 . (lb/ft.s)
u2 = 2.16*10**-4 				                 //Viscosity of water @192 . (lb/ft.s)
pC = 54.8                                       //Density of benzene (lb/ft^3)
pH = 60.13                                      //Density of water (lb/ft^3)
cpC = 0.415                                     //Specific heat capacity of benzene (Btu/lb..)
cpH = 1                                         //Specific heat capacity of water (Btu/lb..)
sgC = 0.879                                     
kC = 0.092                                      //Thermal conductivity of benzene (Btu/h.ft..)
kH = 0.392                                      //Thermal conductivity of water @200 .  (Btu/h.ft..)
k2 = 0.390					                 //Thermal conductivity of water @192 .  (Btu/h.ft..)
mC = 2500	 			                     //Flow rate of benzene (lb/s)
mH = 4000                                       //Flow rate of water (lb/s)
Re = 13000                                      //Reynolds number
dTc = 120-60					                 //Difference in temperature heating for benzene
Tw = 200				                          //Temperatperature of hot water (.)
//For 2-inch schedule 40 pipe
Ai = 0.541                                      //Inside area of pipe (ft^2/ft)
Ao = 0.622                                      //Outside area of pipe (ft^2/ft)
Di = 2.067                                      //Inside diameter of pipe (inch)
Do =  2.375                                     //Outside diameter of pipe (inch)
Si = 0.0233                                     //Inside surface area of pipe (ft^2)
dXw = 0.128                                     //Width of pipe (ft)
pi = %pi

//For 4-inch schedule 40 pipe
Dio = 4.026                                     //Inside diameter of pipe (inch)
Doi = Do                                        //Outside diameter of pipe (inch)
kw = 26                                         

//Calculations:
function [a] = St(Re,Pr)				                 //Dittus Boelter equation
	a = 0.023*Re**-0.2*Pr**-0.667
endfunction
    
//For inside tubes:
Dicalc = 4*mC/(Re*pi*uC)/3600                   //Inside diameter (ft)
mHcalc = Re*pi*uH*(Doi+Dio)/4*3600/12           //Mass flow rate of water (lb/h)
Q = mC*cpC*dTc					             //Heat in water (Btu/h)
dTH = Q/mH                                      //Temperature difference of water (.)
THo = Tw - dTH                                  //Outlet temperature of water (.)
THav = (Tw+THo)/2                               //Average temperature of water (.) 
//For benzene:
PrC = cpC*uC/kC*3600                            //Prandtl number
StC = round(St(13000, PrC) * 10**5)/10**5                   //Stanton number
hi = StC*cpC*mC/Si                              //Heat transfer coefficient (Btu/h.ft^2..)
//For water:
ReH = 4*mH/3600/(pi*u2*(Doi+Dio)/12)            //Reynolds number
PrH = cpH*(u2)/k2*3600                          //Prandtl number
StH = round(St(ReH, PrH) * 10**5)/10**5            //Stanton number
Sann = pi/4*(Dio**2-Doi**2)/144                 //Surface area of annulus (ft^2)
ho = round(StH*cpH*mH/Sann)                     //Heat transfer coefficient (Btu/h.ft^2..)
//For pipe:
Dlm = (Do-Di)/log(Do/Di)*12               //Log mean difference in diameter (ft)
Uo = 1/(Do/Di/hi + dXw*Do/kw/Dlm + 1/ho)        //Overall heat transfer coefficient (Btu/h.ft^2..)
dTlm = (124.4-80)/log(124.4/80)                 //Log mean temperature difference (.)
L = Q/(Uo*0.622*dTlm)                           //Length of pipe (ft)

//Result:
printf("The required length of pipe: %.1f ft",L)
