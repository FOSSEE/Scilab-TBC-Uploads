    //example-2.113  pg no -149
Wo=9.798*10^3;
Fo=1559.39;
C=2;
R=10*10^-6;
L=10^-3;
D.R=L/(C*R);     //DYNAMIC RESISTANCE
Q=(1/C)*((L/R)^0.5);   
B.W=Wo/Q;   //BAND WIDTH
disp('i) DYNAMIC RESISTANCE  = '+string (D.R)+ ' ohm ');
disp('ii) Q  = '+string (Q)+' ');
disp('iii) BAND WIDTH  = '+string (B.W)+'rad/sec ');
    
