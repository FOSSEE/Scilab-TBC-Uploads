// chapter 7 , Example7.14 , pg 215
RH=3.66*10^-11     //Hall coefficient   (in m^3/(A*s))
e=1.6*10^-19      //charge in electron   (in C)
sigma=112*10^7    //conductivity     (in (oh*m)^-1)
n=1/(RH*e)    //charge carrier density
Un=sigma/(n*e)     //electron mobility
printf("charge carrier density(in m^-3)=")
disp(n)
printf("Electron mobility=")
printf("Un=%.3f   m^2/(A*s)",Un)
