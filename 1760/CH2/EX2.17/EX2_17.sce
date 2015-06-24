                  //EXAMPLE 2-17       PG NO-69
I1=10;                     //CURRENT
I2=-4;
I3=2;
I4=0;
T=8;                   //TIME
Irms=[({I1*I1*2}+{I2*I2*2}+{I3*I3*2}+{I4*I4*2})/T]^0.5;          //RMS
disp('ii)   CURRENT R.M.S (Irms) is    =  '+string (Irms) +'  A ');
