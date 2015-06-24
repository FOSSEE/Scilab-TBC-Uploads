
                     // Examle 18.9

i1=10;                          // Current I1 
i2=5;                           // Current I2 
Q=90;                           // Deflection due to 10 Amp
Q1=(i2/i1)^2*Q;                 // Diflection for Spring-Control Current
disp('Diflection for Spring-Control Current = '+string(Q1)+' Digree');

        // Using formula ==> {  Q2= Sin[(i2/i1)^2*sin(Q)]  }

Q2=asind((i2/i1)^2*sind(Q));    // Diflection for Gravity-Control Current
disp('Diflection for Gravity-Control Current = '+string(Q2)+' Digree');