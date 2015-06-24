//Chapter-2,Example2_22_4,pg 2-51

T=300                                   //temp in kelvin

K=8.62*10^-5                            //Boltzman constant in eV

Eg=2.1                                  //Energy band gap

//probability f(Ec)=1/(1+exp((Ec-Ev)/(K*T))

m=K*T

//for f(E)=0.99

p1=0.99

b=1-1/p1

a=log(b)                             //a=(E-2.1)/m

E=2.1+m*a

printf("1) Energy for which probability  is 0.99=")

disp(real(E))

printf("eV")

//for f(E)=0.01

p2=0.01

b2=1-1/p2

a1=log(b2)                            //a=(E-2.1)/m

E1=2.1+m*a1

printf("2)Energy for which probability  is 0.01=")

disp(real(E1))

printf("eV")

