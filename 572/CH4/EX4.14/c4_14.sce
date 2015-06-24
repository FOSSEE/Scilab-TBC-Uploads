// (4.14)   A tank containing 45 kg of liquid water initially at 45C has one inlet and one exit with equal mass flow rates. Liquid water enters at 45C and a mass flow rate of 270 kg/h. A cooling coil immersed in the water removes energy at a rate of 7.6 kW. The water is well mixed by a paddle wheel so that the water temperature is uniform throughout. The power input to the water from the paddle wheel is 0.6 kW. The pressures at the inlet and exit are equal and all kinetic and potential energy effects can be ignored. Plot the variation of water temperature with time.


//solution

//variable initialization

funcprot(0)
mcv = 45                                      //initial mass of water in kg 
Ti = 318                                      //initial temperature of water in kelvin
mdot = 270/3600                               //mass flow rate in kg/s
Qcvdot = -7.6*10^3                            //rate of energy removal by coil in Watt
Wcvdot = -.6*10^3                                  //power input from the paddle in Watt

c = 4.2*10^3                                      //specific heat for liquid water in J/Kg.k

function Tdot= f(t,T)
    Tdot = (Qcvdot-Wcvdot+mdot*c*(Ti-T))/(mcv*c)    
endfunction

t = 0:.1:3600
T = ode(Ti,0,t,f)
plot2d(t/3600,T)
xtitle("","time(h)","water temperature(kelvin)")


