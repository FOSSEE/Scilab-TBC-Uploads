
              //  Example 8.2


R=0.8;                // Resistance
L=1.6;                // Inductor
t1=L/R;               // Time

            // Instantaneous current is ( it= Io*e(-t/2) )
                       
Io=20/exp (0.5);      // The current ( at t= -1 & i= 20A ) 
disp(' The value of current at t=0 i(0) = '+string(Io)+' Amp');
 
i1=Io*exp (-0.5);    // Current through inductor at t= 1S 
i=7.36;              // i1=7.357 we have taken as ( i=7.36 )
p1=i*i*R;            // Power absorbed by Resistor  
disp(' Power absorbed by inductor at t= 1S P(1) = '+string(-p1)+' Watt');

            // We know that w=0.5*L*it^2;  w= 100 J
            
it=sqrt(200/1.6);    // Flow of current 
t=log (Io/it)*2;     // Time required to store Energy 100J
disp(' Time required to store Energy 100J = '+string(t)+' Second');



                //       p 277            8.2
