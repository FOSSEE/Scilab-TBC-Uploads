printf("\t example 17.3 \n");
printf("\t approximate values are mentioned in the book \n");
// Since the loading is based on 1 ft2 of ground area
nd=1.7;
L=1302;
Kxa=115;
Z=(nd*L)/(Kxa);
printf("\t Z is : %.1f ft \n",Z);
HDU=(Z/nd);
printf("\t height of diffusion unit : %.1ff ft \n",HDU);
// end
