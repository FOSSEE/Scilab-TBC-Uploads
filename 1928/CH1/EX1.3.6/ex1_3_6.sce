//Chapter-1,Example1_3_6,pg 1-18

A=132.91                                 //atomic weight of chromium

N=6.023*10^26                           //Avogadro's number

p=1900                                   //Density

a=6.14*10^-10                           //lattice constant

//step 1 : type of structure

n=(p*N*a^3)/A

printf("n =")

disp(round(n))

printf("BCC structure")

//step 2: no of atoms/m^3

x=n/a^3

printf("         no of atoms/m^3=")

disp(x)
