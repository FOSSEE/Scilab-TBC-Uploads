                 //EXAMPLE 1-21              PG NO-24
L=200*10^-3;                      //INDUCTAR
t1=1;                  //di/dt=(-2e^-t+4e^-2t)=-1.9*10^-7;
V=L*(-1.94*10^-7);                   //VOLTAGE AT TIME 1
disp('i)  Voltage  = '+string (V)+'V ');
t2=0.1;                                  //di/dt=(-2e^-t+4e^-2t)^2=0.216;
V1=L*0.5*(0.216);                   //VOLTAGE AT TIME O.1
disp('ii)  Voltage  = '+string (V1)+'V ');
