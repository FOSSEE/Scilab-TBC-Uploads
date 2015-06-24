

//example10.3
//calculate factor of safety for slope
clc;funcprot(0);
//given
x=4;            //given scale
An=14.4;       //area of N rectangle
At=6.4;        //area of T rectangle
Au=4.9;        //area of U rectangle
L=12.6;        //length of arc;
gamma_m=19;    //unit weigth of soil
gamma_w=9.81;  //unit weigth of water
fi=26;         //effective angle(degree)
co=19.5;       //cohesion value

//consider 1m length of dam
SumN=An*x^2*gamma_m;
SumT=At*x^2*gamma_m;
SumU=Au*x^2*gamma_w;
Le=x*L;
F=((Le*co)+(SumN-SumU)*tand(fi))/SumT;
F=round(F*100)/100;
mprintf("Factor of safety for slope=%f.",F);

