

                             // Examle 3.24

               // From the diagram (3.42) Node voltages are
               // Have { va-vb+0vc = 6 }.......................(1
               // Apply KCL at Super node 
               // will get { 0.33va+0.25vb-0.25vc = 2  }.......(2
               // Apply KCL at node c
               // will get { 0va-0.25vb+4.5vc = -7  }..........(3
 
              // By using matrix form will get A*X = B  formate 

delta=[1 -1 0 ; 0.33 0.25 -0.25 ; 0 -0.25 0.45];   // value of A
d=det(delta);                                      // Determinant of A

delta1=[1 6 0 ; 0.33 2 -0.25 ; 0 -7 0.45];         // value of A1 (when 2nd colomn is replace by B) 
d1=det(delta1);                                    // Determinant of A1

delta2=[1 -1 6 ; 0.33 0.25 2 ; 0 -0.25 -7];        // value of A2 (when 3rd colomn is replace by B) 
d2=det(delta2);                                    // Determinant of A2

Vb=d1/d;                                           // Voltage at node-b
Vc=d2/d;                                           // Voltage at node-c

I=(Vb-Vc)/4;                                       // Current through 4 ohm resistor (I)
disp(' Current through 4 ohm resistor = '+string(I)+' Amp');



                     //   p 82        3.24