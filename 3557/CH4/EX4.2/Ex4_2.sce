//Example4.2//
a=4;//body-centered cubic as given in table 3.3
b=sqrt(3); //body-centered cubic as given in table 3.3
c=1;// as we take R common from the equation
ri=(1/2)*(a/b)-c
mprintf("ri = %f R",ri)
//from the appendix 2, R=0.124nm giving
R=0.124;//nm //atomic radius of iron
ri1=ri*R
mprintf("\nri1 = %f nm",ri1)
rC=0.077;//nm //atomic radius of carbon from the appendix 2
R1=rC/ri1
mprintf("\nR1 = %f ",R1)
