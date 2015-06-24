clc;
clear;
//Example 3.52
m1_dot=50    // For horizontal position[kg/h]
Do=10   //[mm]
Do=Do/1000  //[m]
L=1  //[m]
//For 100 tubes n=10
n=10;
//We know that
//m_dot=Q/lambda=h*A*dT/lambda
//m_dot is proportional to  h
//m1_dot prop to h1
//m2_dot  propn to h2
//m1_dot/m2_dot=h1/h2
//or :
m2_dot=m1_dot/((0.725/0.943)*(L/(n*Do))^(1/4))  //[kg/h]
printf("\n For vertical position,Rate of condensationis %f kg/h",m2_dot);
