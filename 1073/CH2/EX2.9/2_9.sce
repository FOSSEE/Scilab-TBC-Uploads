clc
printf("Example 2.9,Page 2.28\n");
//Given
ID=50 //mm;
dT=(573-303);
printf("Internal diameter,ID=%f mm",ID);
r1=ID/2 //mm
r1=r1/1000 // metres
OD=150 // mm
printf("Outer diameter,OD=%f mm",OD);
r2=OD/2 // mm
r2=75/1000 // m
//Thermal conductivity
k=17.45 // W/(m.K) 
//Solution
printf("Q/A=dT/(r2-r1)/k\n");
A1=4*%pi*(r1^2);
A2=4*%pi*(r2^2);
A=sqrt(A1*A2)
Q=(A*k*dT)/(r2-r1)
printf("ANSWER:\nHeat loss=Q=%f W",Q);
