

                             // Examle 3.26

              // Reffer Diagram (3.44a)
              // First of all convert all resistor in to conductor
              // From the obtained diagram (3.44c) Apply KCL to node 1 & 2
              // Node-1    0.7S1-0.2S2-= 3..................(i
              // Node-2    -0.2S1-1.2S2= 2..................(ii
 
              // By using matrix form will get A*X = B  formate 

delta=[0.7 -0.2 ; -0.2 1.2 ];          // value of A
d=det(delta);                          // Determinant of A

delta1=[3 -0.2 ; 2 1.2 ];              // value of A1 (when 1st colomn is replace by B) 
d1=det(delta1);                        // Determinant of A1

delta2=[0.7 3 ; -0.2 2 ];              // value of A2 (when 2nd colomn is replace by B) 
d2=det(delta2);                        // Determinant of A2

V1=d1/d;                               // Voltage at node-1
V2=d2/d;                               // Voltage at node-2

I=(V1-V2)/5;                           // Current through 5 ohm resistor (I)
disp(' Current through 5 ohm resistor = '+string(I)+' Amp');




       //   p 84     3.26
