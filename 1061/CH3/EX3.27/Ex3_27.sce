//Ex:3.27
clc;
clear;
close;
n1=1.47;// core refractive index
n2=1.46;// cladding  refractive index
y=1.3;// wavelength in um
dl=(n1-n2)/n1;// fractional refractive index diff
NA=sqrt(n1^2-n2^2);
v=2.405;
a=(v*y)/(2*3.14*(sqrt(n1^2-n2^2)));// largest core radius in micrometer
n_eff=n1-(NA/(2*3.14*(a/y)));// fractional refractive index
printf("The largest core radius =%f um", a);
printf("\n The fractional refractive index=%f",n_eff);