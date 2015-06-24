
              //  Example 8.4

          // From the diagram 4.5
         
V1=20;                                // Source voltage 
R=80;                                 // Series resistance           
io1=V1/R;                             // Steay state current 
disp(' Steay state current (at t=0- ) = '+string(io1)+' Amp'); 

         // Because current in inducor can't charge instantaneously
         
disp(' Steay state current (at t=0+ ) = '+string(io1)+' Amp');

V2=40;                                // Source voltage
Io2=(V1+V2)/R;                        // Steay state current at t= infinity
disp(' Steay state current (at t= infinity ) = '+string(Io2)+' Amp');

L=40*10^-3;                           // Inductor
t1=L/R;                               // Time COnstant
t=0.001;                              // Time of 1 ms
         // By the formula ==>  i(1 ms)= io1*(io1-Io2)*(1-e-(t/t1))

Ims=io1+(Io2-io1)*(1-exp (-t/t1));    // Steay state current (at t=1ms)
disp(' Steay state current (at t= 1ms ) = '+string(Ims)+' Amp');



            //  p 279              8.4