                       //EXAMPLE 2-21                PG NO-70
T=0.05;                    //TIME
 // (400*integrate('0','t',0.025,))^2=--0.8333
 //100*integrate('0.01','t',0.02,0.02)=-1.738
V=(-0.833-1.738*10^-86)/T;
disp('i) Voltage  (V) is   =  '+string (V) +' V ');
disp('i) Square Root of Voltage  (V) is   =  '+string (sqrt(-V)) +' seconds ');
