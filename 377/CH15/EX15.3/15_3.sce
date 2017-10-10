disp("η=no. of electrons collected/no. of incident photons");
a=1.2*10^11;//say a=no. of electrons collected
b=3*10^11;//say b=no. of incident photon
n=a/b;
printf('\n The value of quantum efficiency is %fpercent',n*100);
disp("R=Ip/Po=n*e*λ/(h*c)");
e=1.602*10^-19;
d=0.85*10^-6;//say d=λ
h=6.626*10^-34;
c=2.998*10^8;
R=n*e*d/(h*c);
printf('\nThe value of R is %fA/W',R);