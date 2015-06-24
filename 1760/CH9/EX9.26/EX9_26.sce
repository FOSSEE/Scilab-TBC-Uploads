                           //EXAMPLE 9-26            PG NO-609-610
C=10^-6;
X=5*10^6;
L=1/(C*X);
disp('i) INDUCTAR (L) is    =  '+string ([L]) +' H  ');
R=10*L;
disp('ii) Resistance (R) is    =  '+string ([R]) +' ohm  ');
W=2.236*10^3;
Q=(W*L)/R;
disp('iii) (Q) is    =  '+string ([Q]) +'   ');
BW=W/Q;
disp('iv) Band Width (BW) is    =  '+string ([BW]) +' rad/sec  ');
