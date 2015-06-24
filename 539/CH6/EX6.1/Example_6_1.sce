//Elongation (Elastic) Computation

clear;
clc;

printf("\tExample 6.1\n");

E=110*10^3;  //Young's modulus of Copper in MPa
sigma=276;   //Applied stress in MPa
lo=305;     //Original length in mm

//Deformation
dl=sigma*lo/E;

printf("\nElongation obtained is %.2f mm \n",dl);

//End