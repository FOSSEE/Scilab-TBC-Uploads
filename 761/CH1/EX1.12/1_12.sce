clc;
//page no 29
//prob no 1.12
//Given: 
A1=10;A2=25;A3=30;NF1=2;NF2=4;NF3=5;
At=A1*A2*A3;
disp(At,'The power gain is');
// The noise figure is given as 
NFt=NF1+((NF2-1)/A1) + ((NF3-1)/(A1*A2));
disp(NFt,'The noise figure is');
// Noise temp can be found as 
Teq=290*(NFt-1);
disp('K',Teq,'The noise temperature is');