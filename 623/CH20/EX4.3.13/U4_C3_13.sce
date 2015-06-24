//variable initialization
R=109734                                                                        //(cm-1)
T=24477                                                                         //(cm-1)
Zeff=1
n=3

//calculation
delta=n-(Zeff*sqrt(R/T));                                                       //quantum defect for 3p configuration of sodium

printf("\nΔ = %.3f",delta);
