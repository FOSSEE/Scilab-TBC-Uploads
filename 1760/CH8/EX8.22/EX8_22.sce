             //EXAMPLE 8-22        PG NO-537-538
L=60*10^-3;
C=150*10^-9;
Fo=1/[2*%pi*(L*C)^0.5];
disp('ii) FREQUENCY (Fo) is    =  '+string (Fo) +'  Hz ')
R=670;
B.W=R/L;
disp('ii) BAND WIDTH (B.W) is    =  '+string (B.W) +'  rad/sec ')
FL=Fo-(1777.22/2);
disp('ii) Lower Cut of Frequency (FL) is    =  '+string (FL) +'  Hz ')
Fu=Fo+(1777.22/2);
disp('ii) Upper Cut of Frequency (Fu) is    =  '+string (Fu) +'  Hz ')
