//Example 5.4: 
clc;
clear;
close;
//given data :
dIc=100;//in mA
Rl=6;//in ohm
mv=dIc*Rl*10^-3;//in V
pd=mv*dIc;//in mW
disp(pd,"(i) power developed in loudspeaker is ,(mW)=")
dVc=10;//in V
oi=(dVc/dIc)*10^3;//in ohm
Rl=6;//in ohm
n=sqrt(oi/Rl);//turn ratio of transformer
tsv=dVc/n;//om V
Il=tsv/Rl;//in A
ptr= Il^2*Rl*10^3;//in mW
format('v',5)
disp(ptr,"(ii) power transferred to loudspeaker is ,(mw)=")
//in textbook in second case there is one point deviation in the answer.
