clc;funcprot(0);//EXAMPLE 6.5
// Initialisation of Variables
F=8000;.......//Load applied for the aluminum alloy in lb
F2=7600;......//Load applied for the aluminum alloy in lb at fracture
dt1=0.505;.......//diameter of for the aluminum alloy in in
dt2=0.497;.......//The diameter at maximum load
Lt=2.120;..........//Final length at maxium load
Lot=2;.............//Initial length of alluminum alloy
Ff=7600;.........//Load applied for the aluminum alloy after fracture in lb
df=0.398;.......//The diameter at maximum load after fracture
Lf=0.205;.......//Final length at fracture
//CALCULATIONS
Es=F/((%pi/4)*dt1^2);.....//Engineering stress in psiAt the tensile or maximum load
Ts=F/((%pi/4)*dt2^2);.....//True stress in psi At the tensile or maximum load
Ee=(Lt-Lot)/Lot;........//Engineering strain At the tensile or maximum load
Te=log(Lt/Lot);........//True strain At the tensile or maximum load
Es2=F2/((%pi/4)*dt1^2);......//Engineering stress At fracture:
Ts2=F2/((%pi/4)*df^2);......//True stress At fracture:
Ee2=Lf/Lot;..........//Engineering strain At fracture:
Te2=log(((%pi/4)*dt1^2)/((%pi/4)*df^2));.......//True strain At fracture:
disp(Es,"Engineering stress in psiAt the tensile or maximum load")
disp(Ts,"True stress in psi At the tensile or maximum load")
disp(Ee,"Engineering strain At the tensile or maximum load")
disp(Te,"True strain At the tensile or maximum load")
disp(Es2,"Engineering stress At fracture:")
disp(Ts2,"True stress At fracture")
disp(Ee2,"Engineering strain At fracture:")
disp(Te2,"True strain At fracture:")
