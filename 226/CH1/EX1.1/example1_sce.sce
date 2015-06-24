//chapter 1
//example 1.1
//page 15
printf("\n")
printf("given")
Nd=3*10^14;Na=.5*10^14;//all in atom/cm^3
ni=1.5*10^10;
disp("resultant densities of free electrons and hole")
ne=(-(Na-Nd)+(sqrt(((Na-Nd)^2)+4*ni^2)))/2;
disp(ne)//electron densities in electron/cm^3
Nd>Na;
n=Nd-Na;
disp(n)
p=(ni^2)/n
printf("densities of hole is %dhole/cm3\n",p)