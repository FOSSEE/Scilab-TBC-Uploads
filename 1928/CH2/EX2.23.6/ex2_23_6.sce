//Chapter-2,Example2_23_6,pg 2-54

Rh=3.66*10^-4                           //Hall coefficient

r=8.93*10^-3                            //resistivity 

e=1.6*10^-19                            //charge on electron

//Hall coefficient Rh=1/(n*e)

n=1/(Rh*e)                              //density

printf("         1) density(n) =")

disp(n)

printf("/m^3")

u=Rh/r                                  //mobility of electron

printf("     2) mobility (u) =")

disp(u)

printf("m^2/v-s")
