//chapter 10
//example 10.1
//page 345
Vnl=12;
Vfl=11.6;
Ilmax=100*10^-3;
LR=Vnl-Vfl;//load regulation
disp(LR)
percentage=((Vnl-Vfl)/Vfl)*100//% LOAD REGULATION
Vout=LR;
Ro=Vout/Ilmax;//output resistance
disp(Ro)