                          //EXAMPLE 2-20                PG NO-70
T=0.03;                    //TIME
 // (1000*integrate('0','t',0.01,0.01))^2=-0.333
 //100*integrate('0.01','t',0.02,0.02)=-1
 //integrate('0.02', '',0.03,0.03)]=0
V=(-0.33-1)/T;
disp('i) Voltage  (V) is   =  '+string (V) +' V ');
disp('i) Square Root of Voltage  (V) is   =  '+string (sqrt(-V)) +' seconds ');
