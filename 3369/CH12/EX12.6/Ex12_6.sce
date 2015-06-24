//Chapter 12,Example 6, page 409
//Determine the efective electrical parameters 
clear
clc
rc = 0.0875*(1+0.004*50) // conductor resistance in ohm/km
Rc = 0.105*85 // ohm
w = 2*%pi*50
Rsh = 23.2*10**-6*85*10**5/(%pi*(3^2-2.5^2)) // Resistance of sheath
D = 8
rsh = 1/2*(2.5+3)
Xm = w*2*log(D/rsh)*10**-7*85000
Ref = Rc + Xm^2*Rsh/(Rsh^2+Xm^2) // Effective AC resistance 
Xc = 11.1// reactance with sheaths open-circuit
Xef = Xc-(Xm^2/(Rsh^2+Xm^2)) //Effective reactance per cable
SlCl = Rsh*Xm^2/(Rc*(Rsh^2+Xm^2)) // Sheath loss/conductor loss
I = 400 // A
emf = Xm*I // emf induced per sheath
printf("\n Conductor resistance = %f ohm",rc)
printf("\n Conductor resistance for the whole leangth (Rc) = %f ohm",Rc)
printf("\n Resistance of sheath (Rsh) = %f ohm/Km ",Rsh)
printf("\n Conductor to sheath mutual inductive reactance (Xm)= %f ohm/m ",Xm)
printf("\n Effective AC resistance(Ref) = %f ohm ",Ref)
printf("\n Reactance with sheaths open-circuit(Xc) = %f ohm ",Xc)
printf("\n Effective reactance per cable(Xef) = %f ohm ",Xef)
printf("\n Sheath loss/conductor loss = %f ",SlCl)
printf("\n emf induced per sheath(emf) = %f V",emf)




