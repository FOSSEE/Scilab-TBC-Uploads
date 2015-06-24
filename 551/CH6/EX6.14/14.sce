clc
T1=673; //K
T2=473; //K
T0=303; //K
T1a=T2;

//dSa/dS=T1/T1a

// W=(T1-T0)*dS; Work done by the power cycle when there was no temperature difference between the vapour condensing and vapour evaporating
// Wa=(T1-T0)*dSa; Work done by the power cycle when the vapour condenses at 400°C and vapour evaporates at 200°C

//Fraction of energy that becomes unavailable is given by (W-Wa)/W

UAE=T0*(T1-T1a)/T1a/(T1-T0);
disp("the fraction of energy that becomes unavailable =")
disp(UAE)