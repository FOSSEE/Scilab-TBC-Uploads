clc;
//Example 23.1 page no 323
printf("Example 23.1 page no 323\n\n");
//calculation of aerodynamic diameter for the following particles
d_es=1.4//equivalent dia of solid sphere,micrometer
sg_s=2//specific gravity of solid sphere
d_eh=2.8//equivalent diameter of hollow sphere, mirometer
sg_h=0.51//specific gravity of hollow sphere
d_pa1=d_es*sqrt(sg_s)//aerodynamic dia for solid sphere
d_pa2=round(d_eh*sqrt(sg_h))//aerodynamic dia for hollow sphere
printf("\n d_pa1=%f micron\nd_pa2=%f micron",d_pa1,d_pa2);
