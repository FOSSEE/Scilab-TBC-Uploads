clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 9
// Mass Transfer


// Example 9.1
// Page 349
printf("Example 9.1, Page 349 \n \n");

w_a = 0.76 ;
w_b = 0.24 ;
m_a = 28 ; // [kg/kg mole]
m_b = 32 ; // [kg/kg mole]

x_a = (w_a/m_a)/(w_a/m_a+w_b/m_b);
x_b = (w_b/m_b)/(w_a/m_a+w_b/m_b);
printf("The molar fractions are given by \n");
printf("x_a = %f\n",x_a);
printf("x_b = %f",x_b);
