

//example 8.18
//determine if dam is safe against sliding
clc;funcprot(0);
//given
hw=97;           //heigth of water in reservior
Bt=7;            //width of top of dam
H=100;           //heigth of the dam
Hs2=90;          //heigth of slope on downstream side
wb=75;           //width of base of dam
miu=0.75;        //coefficient of friction
gamma_d=2.4;     //weigth density of concrete
gamma_w=1000;    //weigth density of water

P=gamma_w*hw^2/(2*1000);
W1=Bt*gamma_d*H;
W2=(wb-Bt)*Hs2*gamma_d/2;
W=W1+W2;
FOS=miu*W/P;
FOS=round(FOS*1000)/1000;
mprintf("Factor of safety against sliding=%f.",FOS);
mprintf("\nDam is safe against sliding");
