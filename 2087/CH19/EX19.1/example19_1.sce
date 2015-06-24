

//example 19.1
//design an expansion transition for canal by Mitra's method
clc;funcprot(0)
//given
Lf=16;            //length of flume
Bf=9;            //width of throat
Bo=15;           //width of canal

//width at any distance x from flumed section is given by
//Bx=Bo*Bf*Lf/(Lf*Bo-(Bo-Bf)x)
//on solving we get
//Bx=2160/(240-6x)

x=[2:2:16];       //distance
mprintf("width at any distance x from flumed section:");
for i=1:8
    Bx(i)=2160/(240-6*x(i));
    Bx(i)=round(Bx(i)*100)/100;
    mprintf('\n%f',Bx(i));
end
