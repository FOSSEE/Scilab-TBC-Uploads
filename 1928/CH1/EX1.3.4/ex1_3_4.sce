//Chapter-1,Example1_3_4,pg 1-17

A=50                                    //atomic weight of chromium

N=6.023*10^23                           //Avogadro's number

p=5.96                                  //Density

n=2                                     //BCC structure

//step 1 : claculation for lattice constant (a)

a=(n*A/(N*p))^(1/3)

//step 2 : radius of an atom in BCC

r=sqrt(3)*a/4

//step 3 : Atomic packing factor (APF)

APF=n*((4/3)*%pi*r^3)/a^3

printf("Atomic packing factor (APF)=")

disp(APF)