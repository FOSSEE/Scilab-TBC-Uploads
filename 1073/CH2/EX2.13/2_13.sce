//Example 2.13
printf("Example 2.13 \n");

L=1   //assume  [m]

k1=43.03   //[W/(m.K)

k2=0.07    //(W/m.K)

T1=423    //inside temperature [K]

T2=305     // [K]

r1=0.0525    //[mm]

r2=0.0575;   //[m]

r3=0.1075 //[m]
//r3=r3/1000;  //[m]
Q=(2*%pi*L*(T1-T2))/(((log(r2/r1))/k1)+((log(r3/r2))/k2));     //Heat loss per metre 

printf("Heat flow per metre of pipe is %f W/m",Q);

printf("Part 2\n");
//T=Temperature of outer surface
T=T1-(Q*log(r2/r1))/(k1*2*%pi*L);

printf("Temperature at outer surface of steel pipe: %f K",T);

printf("\nPart iii\n");
id=0.105    //inside diametre in [m]

A=%pi*id*1  //inside area in [sq m]

C=Q/(A*(T1-T2));   //conductance per length

printf("Conductance per m length based on inside area is %f W/K",C)
  
  


  
  