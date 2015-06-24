//Chapter 10, Problem 18
clc;
BC=100;                 //resistance between point B and C
DA=400;                 //resistance between point D and A
CD=10;                  //resistance between point C and D
Rx=BC*DA/CD;            //calculating unknown resistance using balance equation
printf("unknown resistance = %f K ohms",Rx/1000);
