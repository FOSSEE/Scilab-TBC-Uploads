disp("n=σ/(e*μd)");
a=5.9*10^7;  //say σ=a
b=3.2*10^-3;  //say μd=b
e=1.6*10^-19;
d=8.5*10^28;
n=a/(e*b);
printf('\n The value of n is %f*10^29 m^-3',n*10^-29);
c=n/d;  //say d=concentration of copper atoms and c=avg. no. of electrons/atom
printf('\n The average number of electrons/atom is %1.2f',c);