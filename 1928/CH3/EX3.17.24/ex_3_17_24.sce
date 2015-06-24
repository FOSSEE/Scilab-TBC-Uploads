//Chapter-3,Example3_17_24,pg 3-44

X=0.5*10^-5                             //susceptibility of material

H=10^6                                  //magnetic field strength

I=X*H                                   //intensity of magnetization

u0=4*%pi*10^-7                          //permeability of free space

B=u0*(H+I)                              //flux density

printf("            1) intensity magnetization =")

disp(I)

printf("Amp/m")

printf("       2) flux density in the material =")

disp(B)

printf("wb/m^2")
