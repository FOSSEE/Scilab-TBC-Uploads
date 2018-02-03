//===========================================================================
//chapter 3 example 24
clc;clear all;

//variable declaration
x1   = 1.570;      //voltage in V
x2   = 1.597;      //voltage in V
x3   = 1.591;      //voltage in V
x4   =1.562;      //voltage in V
x5   =1.577;      //voltage in V
x6   = 1.580;      //voltage in V
x7   = 1.564;      //voltage in V
x8   = 1.586;      //voltage in V
x9   = 1.550;      //voltage in V
x10   = 1.575;      //voltage in V
n     =10;

//ccalculations
x   =(x1+x2+x3+x4+x5+x6+x7+x8+x9+x10)/(10);    //arthimetic mean
d1   =x1-x;       //deviation
d2   =x2-x;       //deviation
d3   =x3-x;       //deviation
d4   =x4-x;       //deviation
d5   =x5-x;       //deviation
d6   =x6-x;       //deviation
d7   =x7-x;       //deviation
d8   =x8-x;       //deviation
d9   =x9-x;       //deviation
d10   =x10-x;       //deviation
D     =(abs(d1)+abs(d2)+abs(d3)+abs(d4)+abs(d5)+abs(d6)+abs(d7)+abs(d8)+abs(d9)+abs(d10))/(n);
d     = ((d1^2)+(d2^2)+(d3^2)+(d4^2)+(d5^2)+(d6^2)+(d7^2)+(d8^2)+(d9^2)+(d10^2));
sigma  = sqrt(d/(n-1));       //standard devation 
r      = 0.6745*sigma;       //probable error of one reading 
v      = sigma^2;
rm     = r/(sqrt(n-1));     //probable error of mean in V

//result
mprintf("arthimetic mean = %3.3f",x);
mprintf("\naverage deviation = %3.3f gramme",D);
mprintf("\nstandard deviation = %3.5f gramme*2",sigma);
mprintf("\nprobable error of one reading = %3.5f gramme",r);
mprintf("\n variance= %3.3e gramme^2",v);
mprintf("\nprobable error of mean = %3.4f gramme",rm);
