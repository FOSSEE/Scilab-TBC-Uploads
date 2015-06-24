
                        // Example  2.6

d=(1/12)+(1/20)+(1/30);
Reff=2+(1/d);    // Effective Resisrence 
v=100;
I=v/Reff;
                 //  ( but 12 i1= 20i2= 30i3 )
                 // i2= 12/20 *i1  &  i3= 12/30 *i1
                 // but  10=i1+i2+i3 
                 // 0.6i1+0.4i1+i1=10    i.e  i1=5 
i1=5;
disp(' Current of I1 if = '+string(i1)+' Amp');
i2=0.6*i1;
disp(' Current of I2 if = '+string(i2)+' Amp');
i3=0.4*i1;
disp(' Current of I3 if = '+string(i3)+' Amp');



         //  p 24      2.6

