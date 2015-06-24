//Chapter-1,Example1_14_21,pg 1-66

n=2                                     //BCC structure

ro=8.57*10^3                            //density of chromium

d=2.86*10^-10                           //nearest atoms distance

//d=sqrt(3)/2*a

a=2*d/sqrt(3)

//now use formulae a^3*ro=n*A/N

//therefore a^3*ro/n=mass of unit cell/(no of atoms pre unit cell)=mass of one atom

m=a^3*ro/n

printf("mass of one atom=")

disp(m)

printf("kg")
