//===========================================================================
//chapter 3 example 23

clc;clear all;

//variable declaration
x1   = 41.7;      //voltage in V
x2   = 42;      //voltage in V
x3   = 41.8;      //voltage in V
x4   = 42;      //voltage in V
x5   = 42.1;      //voltage in V
x6   = 41.9;      //voltage in V
x7   = 42.5;      //voltage in V
x8   = 42;      //voltage in V
x9   = 41.9;      //voltage in V
x10   = 41.8;      //voltage in V
n     =10;

//ccalculations
x   =(x1+x2+x3+x4+x5+x6+x7+x8+x9+x10)/(10);    //arthimetic mean
d1   =x-x1;       //deviation
d2   =x-x2;       //deviation
d3   =x-x3;       //deviation
d4   =x-x4;       //deviation
d5   =x-x5;       //deviation
d6   =x-x6;       //deviation
d7   =x-x7;       //deviation
d8   =x-x8;       //deviation
d9   =x-x9;       //deviation
d10   =x-x10;       //deviation
d     = (d1**2)+(d2**2)+(d3**2)+(d4**2)+(d5**2)+(d6**2)+(d7**2)+(d8**2)+(d9**2)+(d10**2);
sigma  = sqrt(d/(n-1));       //standard devation 
r      = 0.6745*sigma;       //probable error of one reading 
rm     = r/(sqrt(n-1));     //probable error of mean in V
R      = x7-x1;        //range in V
//result
mprintf("arthimetic mean = %3.2f",x);
mprintf("\nstandard deviation = %3.3f",sigma);
mprintf("\nprobable error of one reading = %3.3f",r);
mprintf("\nprobable error of mean = %3.5f V',rm);
mprintf("\nRange = %3.2f V',R);

