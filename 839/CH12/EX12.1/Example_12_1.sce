//clear//
clear;
clc;

//Example 12.1
To = 230; //[F]
Ti = 80; //[F]
//Using Table 12.1
hi = 400; //[Btu/ft^2-h-F]
ho = 500; //[Btu/ft^2-h-F]
//From Appendix 6
Di = 0.620; //[in.]
Do = 0.750; //[in.]
//Using Eq.(12.39)
detla_Tt = (1/hi)/(1/hi+(Di/(Do*ho)))*(To-Ti)
