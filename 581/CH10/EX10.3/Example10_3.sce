
clear;
clc;

printf("\t Example 10.3\n");
h=0.2 ;       //height of disc heater,m
r1=0.05;      //smaller radius of heater,m
r2=0.1;        //larger radius of heater,m
Fhs=0.808;        //view factor of heater occupied by shield

As=%pi*(r1+r2)*(h^2+(r2-r1)^2)^0.5;   //area of frustrum shaped shield,m^2
Ah=%pi/4*r2^2;           //heater area,m^2

Fsh=Ah/As*Fhs;        //view factor of shield occupied by heater

printf("view factor of shield occupied by heater is :%.4f\n",Fsh);
//end