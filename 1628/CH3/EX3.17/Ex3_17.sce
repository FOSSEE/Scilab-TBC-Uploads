
                             // Examle 3.17

              // From the diagram (3.31) Apply KCL to node B & C
              // will get { I1+I2= 20 }  &  { I3-I2= 30 }
              // Apply KVL to Bigger loop will get  i.e { I1-3I2-2I3= -100 }
              // By solving All the 3 equation we get 

I1=10;                   // Current in loop-1
disp(' The value of Current (I1) = '+string(I1)+' Amp');

I2=10;                   // Current in loop-2
disp(' The value of Current (I2) = '+string(I2)+' Amp');

I3=40;                   // Current in loop-3
disp(' The value of Current (I3) = '+string(I3)+' Amp');

              // For Resistors Apply KVL to loop-1 & loop-3
              // we get { -0.1I1-20R1+110= 0 }  &  { 0.2I3-120+30R2= 0 }

R1=(110-0.1*I1)/20;     // Resistence (R1)
disp(' The value of Resistence (R1) = '+string(R1)+' Ohm');

R2=(120-0.2*I3)/30;     // Resistence (R2)
disp(' The value of Resistence (R2) = '+string(R2)+' Ohm');




            //    p 71       3.17

