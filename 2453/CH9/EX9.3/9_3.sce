//To calculate the penetration depth
lamda_T = 750;    //penetration depth of mercury, Armstrong
T = 3.5;    //temperature, K
Tc = 4.12;    //critical temperarure, K
lamda_0 = lamda_T*((1-(T/Tc)^4))^(1/2);     //penetration depth, Armstrong
printf("penetration depth at 0K is %d armstrong",lamda_0);
