// Scilab code Exa6.11: : Page-244 (2011)
clc; clear;
t_p = 33/0.92*365*84800;    // Partial half life for beta emission, sec
E_0 = 0.51;        // Kinetic energy
Z = 55;            // Atomic number of cesium
log_fb = 4.0*log10(E_0)+0.78+0.02*Z-0.005*(Z-1)*log10(E_0);    // Comparitive half life
log_ft1 = log_fb+log10(t_p);     // Forbidden tansition
// For 8 percent beta minus emission
t_p = 33/0.08*365*84800;    // Partial half life, sec
E_0 = 1.17;        // Kinetic energy
Z = 55;            // Atomic energy
log_fb = 4.0*log10(E_0)+0.78+0.02*Z-0.005*(Z-1)*log10(E_0);    // Comparitive half life
log_ft2 = log_fb+log10(t_p);    // Forbidden transition
// Check the degree of forbiddenness !!!!!
if log_ft1 <= 10 then
    printf("\nFor 92 percent beta emission :")
    printf("\n\tTransition is once forbidden and parity change");
end
if log_ft2 >= 10 then
    printf("\nFor 8 percent beta emission :")
    printf("\n\t ransition is twice forbidden and no parity change");
end

// Result
// For 92 percent beta emission :
//	Transition is once forbidden and parity change
// For 8 percent beta emission :
//	Transition is twice forbidden and no parity change
 