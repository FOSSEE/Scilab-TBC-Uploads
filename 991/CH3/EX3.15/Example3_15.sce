//Example 3.15.
clc
disp("The magnetostatic deflection, D = (IBL/sqrt(Va))*sqrt(q/2m)")
disp("The electrostatic deflection, D = lLVd / 2dVa")
disp("For returning the beam back to the centre, the electrostatic deflection and the magnetostatic deflection must be equal, i.e.,")
disp("(IBL/sqrt(Va))*sqrt(q/2m) = lLVd / 2dVa")
disp("Therefore,")
format(6)
Vd=(1*10^-2*2*10^-4)*sqrt((2*800*1.6*10^-19)/(9.1*10^-31))
disp(Vd,"Vd(V) = dB*sqrt(2*Va*q/m) =")