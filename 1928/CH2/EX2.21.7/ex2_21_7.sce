//Chapter-2,Example2_21_7,pg 2-49

m=28.1                                  //atomic weight of Si

e=1.6*10^-19                            //charge on electron

N=6.02*10^26                            //Avogadro's number

d=2.4*10^3                              //density of Si

p=0.25                                  //resistivity

//no. of Si atom/m^3

Ad=N*d/m                                //Atomic density

//impurity level is 0.01 ppm i.e. 1 atom in every 10^8 atoms of Si

n=Ad/10^8                               //no of impurity atoms

//since each impurity produce 1 hole

nh=n

printf("1) hole concentration =")

disp(n)

printf("holes/m^3")

up=1/(e*p*nh)

printf("     2) mobility =")

disp(up)

printf("m^2/volt.sec") 