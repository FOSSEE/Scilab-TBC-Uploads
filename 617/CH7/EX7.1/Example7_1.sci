clc();
clear;

// To find the film coefficient for free convetion for a heated plate

tp=200;                                   // Temperature of heated plate in degF
ta=60;                                    // Temperature of air in degF
tf=(tp+ta)/2;                             // Temperature of film in degF
delt=tp-ta;                               // Temperature difference in degF
Z=950000;                                 // As referred from the chart for corresponding temperature 
L=18/12;                                  // Height of vertical plate in ft 

X=L^3*(delt)*Z;
// This value shows that it is laminar range so formula is as follows

h=0.29*(delt/L)^.25;                      // Heat transfer coeeficient in Btu/hr-ft^2-degF
printf("The film coefficient for free convetion for the heated plate is %.1f Btu/hr-ft^2/degF",h)