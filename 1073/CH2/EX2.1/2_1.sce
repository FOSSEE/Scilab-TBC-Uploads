clc;
clear;
printf("Example 2.1 \n Page no. 2.18\n Part-(a)")
A=1; //sq metre
printf("Area of heat transfer,A=%f m^2\n",A)
Q=450; // W/ sq mtre
printf("Rate of heat loss/unit area=%f W/m^2\n",Q)
dT=400; // K
printf("Temperature difference across insulation layer\t,dT=%f K\n",dT)
k=0.11 //W/(m.K)
printf("For asbestos,k=%f\n",k)
//Q=(k* A*dT)/x
x=(k*A*dT)/Q
X=x*1000;

//for fire clay insulation
k=0.84; // W/(m.K)
printf("For fire clay insulation,k=%f W/(m.K)\n",k);
x=(k*A*dT)/Q;
X=x*1000;
printf("Ans.(A).Thickness of asbestos is: %f m=%f mm\n",x,X)
printf("Ans.(B)Thickness of fire clay insulation is: %f m =%f mm\n",x,X)

