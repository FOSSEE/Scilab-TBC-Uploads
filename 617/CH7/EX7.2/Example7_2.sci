clc();
clear;

// To find the film coefficient for natural convetion for a heated square plate

tp=300;                                    // Temperature of heated plate in degF
ta=80;                                     // Temperature of air in degF
tf=(tp+ta)/2;                              // Temperature of film in degF
delt=tp-ta;                                // Temperature difference in degF
Z=610000;                                  // As referred from the chart for corresponding temperature 
L=7/12;                                    // Height of vertical plate in ft 
A=L*L;                                     // Area of square plate in ft^2
X=L^3*(delt)*Z;

// This value shows that it is turbulent range , so formula for heat transfer coefficient is as follow 
h=0.22*delt^(1/3);                         // Temperature coeeficient in Btu/hr-ft^2-degF
q=h*A*delt;                                // Heat loss in Btu/hr

printf("The film coefficient for free convetion for the heated plate is %.2f Btu/hr-ft^2-degF",h);
printf("\n The heat loss by natural convection from the square plate is %.2f Btu/hr",q);
