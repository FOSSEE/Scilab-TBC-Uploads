
//Typical 741 type op-amp Differential gain A
A=200000;
R1=1;//in Kohms
R2=10;
//Circuit gain in negative feedback Av
Av=-(R2/R1)*(A*(R1/(R1+R2))/(1+(A*(R1/(R1+R2)))));
printf("Circuit gain Av=%2.4f",Av);