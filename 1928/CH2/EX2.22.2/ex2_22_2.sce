//Chapter-2,Example2_22_2,pg 2-50

T=300                                   //temp in kelvin

K=8.62*10^-5                            //Boltzman constant in eV

m=0.012                                 //energy level(Ef-E)

a=(m/(K*T))

//probability f(Ec)=1/(1+exp((Ec-Ev)/(K*T))

p=1/(1+exp(a))

p1=1-p

printf("probability of an energy level not being occupied by an electron=")

disp(p1)
