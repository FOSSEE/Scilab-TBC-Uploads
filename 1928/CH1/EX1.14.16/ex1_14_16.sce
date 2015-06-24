//Chapter-1,Example1_14_16,pg 1-64

n=2                                     //BCC structure

ro=5.98*10^3                            //density of chromium

A=50                                    //atomic wt of chromium

N=6.023*10^26                           //Avogadro's number

a=((n*A)/(N*ro))^(1/3)

printf("     1) Lattice constant=")

disp(a)

printf("m")

//for BCC

r=sqrt(3)*a/4                           //radius of chromium

APF=(n*(4/3)*%pi*(r^3))/(a^3)

printf("    2) A.P.F. for chromium=")

disp(APF)

