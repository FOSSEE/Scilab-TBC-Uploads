clc;
delT=626-70;    //change in temp. in Farenheit
m=200;          //mass in lb
c=0.03;         //specific heat capacity in Btu/(lb.Farenheit)
Lf=10.6;        //Latent Heat of Fusion in Btu/lb
Q=(m*c*delT)+(m*Lf); //calculating heat in Btu
disp(Q,"Heat Required in Btu = ");   //displaying result.