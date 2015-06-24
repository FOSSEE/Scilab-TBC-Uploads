// chapter 3
//example 3.19
//page 163, figure 3.73
R1=200;R2=100;Rf=100*10^3;//given
Rg1=100+0;//potentiometer resistance is 0 at start
gain1=((1+2*(Rf/Rg1))*(R2/R1));
Rg2=100+100*10^3;//potentiometer maximum value
gain2=((1+2*(Rf/Rg2))*(R2/R1));
disp(gain1,gain2)// range of gain