

                             // Examle 3.21

              // From the diagram (3.39) Apply KVL to all the 3 loop.
              // Loop-1    7I1-4I2+0I3-= 67..................(i
              // Loop-2    -4I1+15I2-6I3= -152...............(ii
              // Loop-3    0I1-6I2+13I3= 74..................(iii
              
              // By using matrix form will get A*X = B  formate 

delta=[7 -4 0 ; -4 15 -6 ; 0 -6 13 ];          // value of A
d=det(delta);                                  // Determinant of A

delta1=[7 -4 67 ; -4 15 -152 ; 0 -6 74 ];      // value of A1 (when 3rd colomn is replace by B) 
d1=det(delta1);                                // Determinant of A1

I3=d1/d;                                       // Current through 7 ohm resistor (I3)
disp(' Current through 7 ohm resistor = '+string(I3)+' Amp');





       //   p 79     3.21
