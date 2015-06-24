clc 
//initialisation of variables
VGSQ= 3.5 //V
VDSQ= 10 //V
id1= 10.7 //mA
id2= 4.7 //mA
dvgs= 1 //V
id3= 8 //mA
id4= 6.7 //mA
vds1= 14 //V
vds2= 4 //V
//CALCULATIONS
gm= (id1-id2)/dvgs
rd= (vds1-vds2)*10^3/(id3-id4)
//RESULTS
printf ('rd = %.1e ohms',rd)
