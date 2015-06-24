
                     // Examle 18.7

k=60/20;                 // Derived from  { Q= k x I }
i=12;                    // Current
Q1=k*i;                  // Diflection for Spring-Control Current
disp('Diflection for Spring-Control Current = '+string(Q1)+' Digree');

k1=sind(60)/20;          // Derived from { SinQ= k x I }
Q2=asind(k1*12);         // Diflection for Gravity-Control Current
disp('Diflection for Gravity-Control Current = '+string(Q2)+' Digree');



             // 775      18.7