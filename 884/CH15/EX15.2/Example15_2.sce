// computation of [H+] ion concentration from [OH-] ion concentration

clear;
clc;

printf("\t Example 15.2\n");

OH=0.0025 ;// [OH-] ion concentration, M
Kw=1*10^-14 ;// ionic product of water, M^2

H=Kw/OH; // From the formula (ionic product)Kw=[H+]*[OH-]
printf("\t The [H+] ion concentration of the solution is : %3.1f*10^-12 M\n",H*10^12);

//end
