clc;
// page no 314
// prob no 7.1
//The transmission bandwidth is given by the equation Bt=(1+r)Rb/2 and hence transmission rate is given by Rb=2Bt/(1+r);where r=roll-off factor and 0<=r<=1. Since 'r' can take value in between 0 and 1,bandwidth varies from 2Bt to Bt.
Bt=32000;r=1;//assume values of Bt and r
Rb=(2*Bt)/(1+r);
disp(Rb,"transmission rate");//Rb=Bt for r=1