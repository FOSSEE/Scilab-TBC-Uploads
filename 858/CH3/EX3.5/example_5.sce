clc
clear 
printf("example 3.5 page number 92\n\n")

//to find the screen effectiveness

xv = 0.88;
xf = 0.46;
xl = 0.32;
F= 100   //in kg

L = (F*(xf-xv))/(xl-xv);
V = F-L;
printf("L = %f Kg \nV = %f Kg",L,V)
Eo = (V*xv)/(F*xf);

printf(" \n\neffectiveness based on oversized partices = %f \n\n",Eo)
Eu = (L*(1-xl))/(F*(1-xf));

printf("effectiveness based on undersized partices = %f",Eu)
E=Eu*Eo;

printf("\n\noverall effectiveness = %f",E)
