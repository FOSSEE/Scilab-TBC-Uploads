//Example 1.30
//Detremine the energy of the signal x(n)=0.5^n for n >0
clc;
E=integrate('(0.5^n)','n',0,1000);