clc
//initialization of varaibles
v2=5.434        //cu ft/lb
v1=4.937        //cu ft/lb
h1=1227.6
h2=1223.9
A1=%pi/144
//calculations
Vratio=v2/v1
V1=sqrt(64.4*(h1-h2)*778/(Vratio^2 -1))
V2=V1*Vratio
w=A1*V1/v1
//results
printf("Average velocity at 1 = %d fps",V1)
printf("\n Average velocity at 2 = %d fps",V2)
printf("\n Rate of flow = %.2f lb/sec",w)
