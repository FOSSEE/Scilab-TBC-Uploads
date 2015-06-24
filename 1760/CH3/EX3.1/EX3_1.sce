             //EXAMPLE 3-1 PG NO-172
VL=400;
Vp=400/sqrt(3);
Z=8-%i*10;
IL=Vp/Z;
S=sqrt(3)*(VL*IL);
P=S*(cos(-51.34));
Q=S*(sin(-51.34));
Von=230.94+%i*0;
Vbn=-115.47-%i*99.99
disp('i) RMS   =  '+string (S)+'A ')
