//Example 6.8//
si=0.690;//MPa //Megapascal //tensile stress
a=cosd(40);//degree
b=cosd(60);//degree
torque=si*a*b
mprintf("torque = %f MPa (38.3psi)",torque)
t=0.94;//MPa //MegaPascal //torque
sig=t/(a*b)
mprintf("\n sig = %f Mpa (356psi)",sig)
