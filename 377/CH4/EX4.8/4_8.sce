disp("(E-Ef)=3*K*T");
T=300;
K=1.38*(10^-23);
a=3*K*T;
b=K*T;
c=1/(1+exp(a/b));  //say probability,f(E)=c
d=c*100;
printf('the probablity that an energy level 3*K*T above the fermi level Ef is occupied by an electron at T=300k is %f percent',d);