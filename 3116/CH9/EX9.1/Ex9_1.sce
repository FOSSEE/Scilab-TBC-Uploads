

clc
// given that
E=110*10^3  //Young's modulus of Copper in MPa
sigma=276   //Applied stress in MPa
l_o=305     //Original length in mm
printf("Example 9.1\n")

del_l=sigma*l_o/E //Deformation

printf("\n Elongation obtained is %.2f mm \n",del_l)

