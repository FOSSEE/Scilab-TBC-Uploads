//Chapter-2,Example2_23_5,pg 2-53

B=0.55                                  //magnetic field

d=4.5*10^-3                             //distancebetween surface

J=500                                   //current density

n=10^20                                 //density

e=1.6*10^-19                            //charge on electron

Rh=1/(n*e)                              //Hall coefficient

Vh=Rh*B*J*d                             //Hall voltage

printf("          1) Hall voltage =")

disp(Vh)

printf("Volts")

printf("     2) Hall coefficient =")

disp(Rh)

printf("m^3/C")

u=0.17                                  //mobility of electrom

m=atan(u*B)

a=m*180/%pi                             //conversion randian into degree

printf("     3) Hall angle =")

disp(a)

printf("degree")