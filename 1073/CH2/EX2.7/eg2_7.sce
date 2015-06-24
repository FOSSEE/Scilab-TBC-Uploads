clc
printf("Example 2.7,Page no 2/26 \n");
printf("Part-(a)\n");
A=1; // sq metre
x1=114 // mm
x1=114/1000 // metre
k1=0.138 // W/(m.K)
R1= x1/(k1*A)
x2=229 //mm
x2= x2/1000  // metre
k2=1.38  // W/m.K
R2=x2/(k2*A)
dT=1033-349
//Heat loss
Q=dT/(R1+R2)
printf("ANSWER:Heat loss  from 1 sq metre wall=%f W",Q);
printf("Part(b)\n");
//contact resistance=cr
cr=0.09 //K/W
R=R1+R2+cr
Q=dT/R
printf("ANSWER:Heat loss from 1 sq metre when resistance present=%f W",Q);
