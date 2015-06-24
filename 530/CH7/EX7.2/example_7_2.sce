clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 7
// Heat Exchangers


// Example 7.2
// Page 294
printf("Example 7.2, Page 294 \n \n");

m = 1000 ; // [kg/h]
Thi = 50 ; // [C]
The = 40 ; // [C]
Tci = 35 ; // [C]
Tce = 40 ; // [C]
U = 1000 ; // OHTC, W/m^2 K

// Using Eqn 7.5.25
q = m/3600*4174*(Thi-The) ; // [W]

delta_T = ((Thi-Tce)-(The-Tci))/log((Thi-Tce)/(The-Tci)); // [C]
printf("delta T = %f \n\n",delta_T);

// T1 = Th and T2 = Tc
R = (Thi-The)/(Tce-Tci) ;
S = (Tce-Tci)/(Thi-Tci) ;
// From fig 7.15,
F =0.91 ;

printf("Taking T1 = Th and T2 = Tc \n")
printf("R = %f, S = %f \n",R,S);
printf("Hence, F = %f \n \n",F);

// Alternatively, taking T1 = Tc and T2 = Th
R = (Tci-Tce)/(The-Thi);
S = (The-Thi)/(Tci-Thi);

// Again from fig 7.15,
F =0.91 ;

printf("Taking T1 = Tc and T2 = Th \n")
printf("R = %f, S = %f \n",R,S);
printf("Hence, F = %f \n",F);

A = q/(U*F*delta_T);
printf("\nArea = %f m^2",A);
