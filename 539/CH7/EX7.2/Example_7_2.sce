//Tensile Strength and Ductility Determinations for Cold-Worked Copper

clear;
clc;

printf("\t Example 7.2\n");

df=12.2;  //Final dia in mm
di=15.2;  //Initial dia in mm

CW = ((di^2-df^2)/di^2)*100;

printf("\nCold work is %.1f %%\n",CW);

ts=340;  //in Mpa  tensile strength
duc=7;   //in %  Ductility
printf("\nFrom graph of Fig. 7.19b in book");
printf("\nTensile strength is %d MPa",ts);
printf("\nDuctility is %d %% EL\n",duc);

//End