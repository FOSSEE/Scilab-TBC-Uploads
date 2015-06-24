//Exmaple 5.1.
clc
format(6)
thetaM=4.26 //work function
chi=4.01 //electron affinity
thetaBN=thetaM-chi
disp("The barrier height for N-type material is,")
disp(thetaBN,"    Theta_BN(V) = Theta_M - Chi = ")
thetaIN=thetaBN-((((1.38*10^-23)*300)/(1.6*10^-19)))*log((2.8*10^25)/(4*10^17))
disp("The built-in potential is given by,")
disp(thetaIN,"    Theta_IN(V) = Theta_BN - (kT/q)*ln(NC/ND) =")  // answer in the textbook is wrong, even if we take log10 we get a answer 0.047.