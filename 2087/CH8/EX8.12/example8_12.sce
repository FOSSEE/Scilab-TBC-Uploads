

//example8.12
// calculate maximum permissible heigth of shutter so that no tension develops
clc;funcprot(0);
//given
Bt=3;            //width of top of dam
H=12;           //heigth of the dam
wb=9;           //width of base of dam
gamma_m=21;           //unit weigth of masonary
gamma_w=9.81;    //weigth density of water

W1=Bt*gamma_m*H;
W2=gamma_m*H*(wb-Bt)/2;

//taking moment about a point on base at 3m from toe
L1=3+Bt/2;
L2=(2*(wb-Bt)/3)-3;
M1=W1*L1,
M2=W2*L2;
M=M1+M2;

//net moment about this point should be zero for equilibrium
s=(M*6/gamma_w)^(1/3)-12;
s=round(s*100)/100;
mprintf("maximum permissible heigth of shutter=%f m.",s);

