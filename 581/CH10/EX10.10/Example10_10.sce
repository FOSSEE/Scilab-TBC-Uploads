
clear ;
clc;

printf("\t Example 10.10\n");
T1=773;          //temp.of two sides of duct,K
T2=373;          //temperature of the third side,K
e1=0.5;        //emissivity of stainless steel
e2=0.15;        //emissivity of copper
a=5.67*10^-8;    //stefan constant
f12=0.4;        //view factor of 1 occupied by 2.
f21=0.67;       //view factor of  2 occupied by 1
f13=0.6;        // view factor of 1 occupied by 3
f31=0.75;        //view factor of 3 occupied by 1
f23=0.33;        //view factor of 2 occupied by 3
f32=0.25;        //view factor of 2 occupied by 3

A=[1 (-1+e2)*f12 (e2-1)*f13;(-1*e1*f21) 1 (e1*-1*f23);(e1*-1*f31) (e1*-1*f32) 1];    //matrix method to solve three equations to find radiosity

B=[e2*a*T2^4;e1*a*T1^4;e1*a*T1^4];    //matrix method to solve three equations to find radiosity

X=inv(A)*B;    //solution of above matrix method

Qn1=0.5*e2/(1-e2)*(a*T2^4-X(1));    //net heat transfer to the copper base per meter of the length of the duct,W/m
Qn2=Qn1+2.6;
printf("net heat transfer to the copper base per meter of length of the duct is : %.1f W/m ,the -ve sign indicates that the copper base is gaining heat.\n",Qn2);
//end)