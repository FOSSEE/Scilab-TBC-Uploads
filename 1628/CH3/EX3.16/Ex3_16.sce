
                             // Examle 3.16

              // From the diagram (3.30) Apply KVL to all the 3 loop.
              // Loop-1    5Ix+0Iy-10I1-= 100..............(i
              // Loop-2    7Ix+ 2Iy-2I1= -50...............(ii
              // Loop-3    3Ix-5Iy-3I1= -50................(iii
              
              // By using matrix form will get A*X = B  formate 
              
delta=[5 0 10 ; 7 2 -2 ; 3 -5 -3 ];             // value of A
d=det(delta);                                   // Determinant of A

delta1=[100 0 10 ; -50 2 -2 ; -50 -5 -3 ];      // value of A1 (when 1st colomn is replace by B) 
d1=det(delta1);                                 // Determinant of A1

delta2=[5 100 10 ; 7 -50 -2 ; 3 -50 -3 ];       // value of A2 (when 2nd colomn is replace by B)
d2=det(delta2);                                 // Determinant of A2

Ix=d1/d;                                        // Current (Ix)
disp(' The value of Current (Ix)  = '+string(Ix)+' Amp');

Iy=d2/d;                                        // Current (Iy)
disp(' The value of Current (Iy) = '+string(Iy)+' Amp');




       //   p 71     3.16



