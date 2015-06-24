//page 569
//prob 12.11
a=1400*%pi;//given
clc;
c=1;//assumed
w0=0;w1=8000*%pi;
S=integrate('1/((w^2)+(a^2))','w',w0,w1);
So=S/%pi;
disp(So,'transmitted power');//assuming G=1,hence St=So
//assuming N=1
No=4000;//because No=N*B
SNR=So/No;
disp(SNR,'SNR without pre-emphasis and de-emphasis');
S=integrate('1/(sqrt((w^2)+(a^2)))','w',w0,w1);
disp(S,'S is');
SNRo=(10^-8)*4*(%pi^2)/(2*(S^2));
disp(SNRo,'SNR at the output is');
disp((SNRo/SNR),'Improvement factor in SNR with pre-emphasis and de-emphasis');