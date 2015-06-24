                            //EXAMPLE 5-25           PG NO-318-319
I1=4.4-%i*1.012;                              //Current
I2=I1*[(%i*5)/(3+%i*9)];
Z1=1;
I11=[I2/[10*%i*5]]*[%i*5/10+%i*5];
disp(' Current is  in polar form = '+string(I1)+'A');
disp(' Current is  in polar form = '+string(I2)+'A');
disp(' Current is  in polar form = '+string(I11)+'A');
I12=I1-I11;
disp(' Current is  in polar form = '+string(I12)+'A');
