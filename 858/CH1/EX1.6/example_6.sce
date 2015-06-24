clc
clear 

printf('example 1.6 page number 27 \n\n')
//to find vapor pressre of ethyl alchohal

pa1 = 23.6;      //VP of ethyl alchohal at 10 degree C
pa3=760      //VP of ethyl alchohal at 78.3 degree C in mm Hg
pb1 = 9.2      //VP of ethyl water at 10 degree C in mm Hg
pb3=332      //VP of ethyl water at 78.3 degree C in mm Hg

C=(log10(pa1/pa3)/(log10(pb1/pb3)));

pb2=149      //VP of water at 60 degree C in mm Hg

pas=(pb3/pb2);
pa=C*log10(pas);
pa2=pa3/(10^pa);

printf("vapor pressure of ethyl alcholoh at 60 degree C = %f mm Hg",pa2)
