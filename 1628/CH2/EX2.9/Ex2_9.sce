
                  //  Example 2.9

            // From the diagram 2.18
            // Minimum value of Req is obtained if R=0 
            // Maximum value of Req is obtained if R= Open ckt
            
R1=30;                     // Given the value of R1 & R1+R2= 75             
R2=75-R1;                  // The value of R2             
disp(' The value of R1 is = '+string(R1)+' Ohms ');
disp(' The value of R2 is = '+string(R2)+' Ohms ');

            // From the diagram 2.19            
            
Req= (30+75)/2;           // Required value of Req is Req= (30+75)/2
Rp=Req-R1;                // Hance the parallel combination of R2 & R
disp(' The value of Rp is = '+string(Rp)+' Ohms ');
disp('The value of Rp is exactly half of R2= 45, hance the value of R should be '+string(R2)+' Ohms ');




                          //  p 26            2.9
