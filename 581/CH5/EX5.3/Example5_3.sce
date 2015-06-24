
clear;
clc;

printf("\t Example 5.3\n");

d1=0.001;; //diameter of nichrome, m
h=30000; //convection coefficient , W/(m^2*K)
T1=373; // wire temperature, K

//heat is being generated in proportion to product of voltage and current, if the boiling action removes heat rapidly enough in comparison with the heat capacity of the wire,the surface temperature may well vary.

Bi=h*d1/2/13.8; // biot number comes ot to be 1.09 and value of a= w*d1^(2)/4/a1 comes out to be 27.5. by looking at the chart of cylinders, we find that,     (Tmax-Tav)/(Tav-To)=0.04
 TF=0.04; // temperature fluctuation of 4 percent is not serious and experiment is valid.
 
 printf("\t the temperature fluctuation is : %.2f this fluctuation is probably not serious.it therefore appears that the experiment is valid.\n", TF);
 //end