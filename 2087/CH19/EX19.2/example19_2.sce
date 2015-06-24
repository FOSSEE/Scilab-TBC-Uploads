

//example 19.2
//design an expansion transition for canal by Chaturvedi's method
clc;funcprot(0);
//given;
Lf=16;            //length of flume
Bf=9;            //width of throat
Bo=15;           //width of canal

x=[2:2:16];     //distance

//distance x is related as x=Lf*Bo^(2/3)(1-(Bf/Bx)^1.5)/(Bo^1.5-Bf^1.5)
//on solving we get
//(Bf/Bx)^1.5=1-(x/29.893)   (relation is misprinted in book)
//let (Bf/Bx)^1.5=r

mprintf("width at any distance x from flumed section:");
for i=1:8
    r(i)=1-(x(i)/29.893);       //Bf/Bx^(1.5)
    R(i)=r(i)^(2/3);            //Bf/Bx
    Bx(i)=Bf/R(i);     
    Bx(i)=round(Bx(i)*100)/100;          
    mprintf("\n%f.",Bx(i));
end

