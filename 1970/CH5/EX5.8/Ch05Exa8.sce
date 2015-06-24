// Scilab code Exa5.8:  : Page 205 (2011)
clc; clear;
N = 120.1*6.023e+023/239;    // Number of Pu nuclei
P_rel = 0.231;        // Power released, watt
E_rel = 5.323*1.6026e-13;        // Energy released, joule
decay_rate = P_rel/E_rel;        // Decay rate of Pu239, per hour
t_half = N*log(2)/(decay_rate*365*86400);    // Half life of Po239, sec
printf("\nThe half life of Pu = %4.2e yr", t_half);

// Result
// The half life of Pu = 2.46e+004 yr 