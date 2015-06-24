//Chapter-2,Example2_22_3,pg 2-51

t=20                                    //temp in degree 

T=t+273                                 //temp in kelvin

K=8.62*10^-5                            //Boltzman constant in eV

Eg=1.12                                 //Energy band gap

//For intrensic semiconductor (Ec-Ev)=Eg/2

//let (Ec-Ev)=m

m=Eg/2

a=(m/(K*T))

//probability f(Ec)=1/(1+exp((Ec-Ev)/(K*T))

p=1/(1+exp(a))


printf("probability of an electron being thermally excited to conduction band=")

disp(p)
