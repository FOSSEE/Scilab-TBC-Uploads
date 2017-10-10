disp("From Boltzmann approximation, n=Nc=2.78*10^19 cm^3");
Nc=2.78*10^19;
n=Nc*0.78;
pi=3.14;
a=0.65;  //say a=ξ(0)
printf('\n The value of n form Joyce-Dixon approximation is %f',n);
n1=2*a/sqrt(pi);
printf('\n The value of n form graph is %f*Nc',n1);