


clc
// given that

sigma=40*10^6 // in Pa  Tensile stress
E=69*10^9  //Modulus of elasticity  in pa
Ys=0.3  //Specific surface energy  in N/m^2
printf(" Example 11.1\n");

a=2*E*Ys/(%pi*sigma^2) //Maximum length of surface flaw

printf("\n Maximum length of surface flaw without fracture is %.1f micro meter \n",a*1e6);


