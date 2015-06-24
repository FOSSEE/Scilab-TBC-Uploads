clc();
clear;

// To find the film coefficient for natural convetion for a heated square plate

tp=200;                                    // Temperature of heated plate in degF
ta=70;                                     // Temperature of air in degF
tf=(tp+ta)/2;                              // Temperature of film in degF
delt=tp-ta;                                // Temperature difference in degF
Z=910000;                                  // As referred from the chart for corresponding temperature 
D=4.5/12;                                  // Diameter of pipe in ft
X=D^3*(delt)*Z;
// This value lies between X=1000 to X=10^9 , so formula for heat transfer coefficient is as follow 

h=0.27*(delt/D)^(1/4);                      // Temperature coeeficient in Btu/hr-ft^2-degF
q=h*delt;                                   // Heat loss in Btu/hr

printf("The film coefficient for free convetion for the heated plate is %.2f Btu/hr-ft^2-degF",h);
printf("\n The heat loss by natural convection from the square plateis %d Btu/hr",q);
