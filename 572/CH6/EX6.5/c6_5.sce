//(6.5)   A 0.3 kg metal bar initially at 1200K is removed from an oven and quenched by immersing it in a closed tank containing 9 kg of water initially at 300K. Each substance can be modeled as incompressible. An appropriate constant specific heat value for the water is cw = 4.2 kJ/kg. K, and an appropriate value for the metal is cm = 0.42 kJ/kg  K. Heat transfer from the tank contents can be neglected. Determine (a) the final equilibrium temperature of the metal bar and the water, in K, and (b) the amount of entropy produced, in kJ/k.


//solution

//variable initialization
Tmi = 1200                                   //initial temperature of metal in kelvin
cm = .42                                     //specific heat of metal in KJ/kg.k
mm = .3                                      //mass of metal in kg
Twi = 300                                    //initial temperature of water in kelvin
cw = 4.2                                     //specific heat of water in KJ/Kg.k
mw = 9                                       //mass of water in kg


//part(a)
//solving energy balance equation yields
Tf = (mw*(cw/cm)*Twi+mm*Tmi)/(mw*(cw/cm)+mm)

//part (b)
//solving entropy balance equation yields
sigma = mw*cw*log(Tf/Twi)+mm*cm*log(Tf/Tmi)

printf('the final equilibrium temperature of the metal bar and the water in kelvin is :\n\t Tf = %f',Tf)
printf('\n\n the amount of entropy produced in kj/k is: \n\tsigma = %f ',sigma)