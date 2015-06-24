clc
//Initialization of variables
N0=1
//calculations
N1=3/%e
N2=6/%e^2
N3=10/%e^3
N=N0+N1+N2+N3
ei=[0 1 2 3]
eid=ei+1
f0=N0/N
f1=N1/N
f2=N2/N
f3=N3/N
fi=[f0 f1 f2 f3]
//results
printf("fractional population of level 0 = %.3f",f0)
printf(" \n fractional population of level 1 = %.3f",f1)
printf(" \n fractional population of level 2 = %.3f",f2)
printf(" \n fractional population of level 3 = %.3f",f3)
xtitle('fractional populations vs Energy levels','Energy levels ei','fractional population Ni/N')
bar(ei,fi,0.1)
