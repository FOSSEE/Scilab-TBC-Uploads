//Ex:3.22
clc;
clear;
close;
n=20;
// d=y/2, where y is wavelength
// FNBW=2y/nd, then
// FNBW=2y/(n*y/2)=4/n radian
FNBW=4/n;// beam width for broad side array in radian
Fnbw=(180*FNBW)/%pi;// beam width for broad side array in degree
HPBW=Fnbw/2;// the half power beam width for broad side array in degree
// d1=y/4, for end fire array
// then FNBW1=2*sqrt(2y/nd1)
// FNBW1=2*sqrt(2y/(n*y/4))=2*sqrt(8/n)
FNBW1=2*sqrt(8/n);// beam width for end fire array in radian
Fnbw1=(180*FNBW1)/%pi;// beam width for end fire array in degree
HPBW1=(2/3)*Fnbw1;// the half power beam width for end fire array in degree
printf("The beamwidth for a broad side array = %f degree", Fnbw);
printf("\n The half power beam width for broad side array = %f degree", HPBW);
printf("\n The beam width for end fire array = %f degree", Fnbw1);
printf("\n The half power beam width for end fire array = %f degree", HPBW1);