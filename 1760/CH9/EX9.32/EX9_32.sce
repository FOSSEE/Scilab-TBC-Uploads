                           //Example 9-32         PG NO 618-619
P1=1-%i*50;
P2=1+%i*150;
Z1=0+%i*50;
I=[0.2*Z1]/[P1*P2];
disp('i) Current (I) is    =  '+string ([I]) +' A  ');
L=5;                                //INDUCTAR
R=10;                              //RESISTANCE
C=2*10^-5;
Wo=1/sqrt(L*C);
disp('ii) Wo (Wo) is    =  '+string ([Wo]) +' rad/sec  ');
Q=(Wo*L)/R;
disp('iii) Q (Q) is    =  '+string ([Q]) +'   ');
BW=Wo/Q;
disp('ii) Band Width (BW) is    =  '+string ([BW]) +' rad/sec  ');
