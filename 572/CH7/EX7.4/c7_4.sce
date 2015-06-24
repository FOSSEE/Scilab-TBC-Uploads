//(7.4)    For the gearbox of Examples 2.4 and 6.4(a), develop a full exergy accounting of the power input. Let T0 = 293 K.


//solution

//Since the gearbox volume is constant, the rate of exergy transfer accompanying power reduces to the power itself. Accordingly, exergy is transferred into the gearbox via the high-speed shaft at a rate equal to the power input, 60 kW, and exergy is transferred out via the low-speed shaft at a rate equal to the power output, 58.8 kW. Additionally, exergy is transferred out accompanying heat transfer and destroyed by irreversibilities within the gearbox.

T0 = 293                                         //in kelvin
Qdot = -1.2                                      //in KW, from example 6.4a
Tb = 300                                         //temperature at the outer surface of the gearbox in kelvin from example 6.4a
sigmadot = 4e-3                                  //rate of entropy production in KW/k from example 6.4a

R = (1-T0/Tb)*Qdot                              //time rate of exergy transfer accompanying heat
Eddot = T0*sigmadot                             //rate of exergy destruction

printf('balance sheet')
printf('\nrate of exergy in:\n high speed shaft\t\t 60Kw')  
printf('\nDisposition of the exergy:\n• Rate of exergy out\nlow-speed shaft\t\t 58.8Kw') 
printf('\nheat transfer in kw\t\t%f',norm(R))
printf('\n• Rate of exergy destruction in kw\t\t%f',Eddot)
