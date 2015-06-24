clc;
//Example 25.1
//page no 370
printf("Example 25.1 page no 370\n\n");
//calculation of efffective particle diameter for a set of packing
V=0.2//packing volume
n=100//no. of particle assume
V_p=V*1000/n//the volume of single particle,mm^2//
S_p=2.18//average surface area of particle,mm^2
a_p=S_p/V_p//specific surface area of particle ,(mm)^-1
D_p = 6/a_p//effective diameter of particle,mm
printf("\n effective partcle diameter D_p=%f mm ",D_p);
