

                             // Examle 3.20

              // From the diagram (3.38) Apply KVL to all the 3 loop.
              // Loop-1    19I1-12I2+0I3-= 60................(i
              // Loop-2    -12I1+18I2-6I3= 0...............(ii
              // Loop-3    0I1-6I2+18I3= 0.................(iii
              
              // By using matrix form will get A*X = B  formate 

delta=[19 -12 0 ; -12 18 -6 ; 0 -6 18 ];        // value of A
d=det(delta);                                   // Determinant of A

delta1=[60 -12 0 ; 0 18 -6 ; 0 -6 18 ];         // value of A1 (when 1st colomn is replace by B) 
d1=det(delta1);                                 // Determinant of A1

Is=d1/d;                                        // Current drawn from source (Is=I1)
disp(' Current drawn from source (Is)  = '+string(Is)+' Amp');





       //   p 79     3.20
