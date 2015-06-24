

                  //  Example 4.3

            // From the diagram 4.5
            // Using super position theorem
            // 4-A current source is active
            
i=4/{1+(2+3)};          // Current
R=3;                    // Rsistance of 3 Ohms
V4=i*R;                 // Voltage across 3 Ohms resistance in Case-1

            // 5-A current source is active
i5=5;                       // 5-A current source             
V5=(-i5)*{1/[1+(2+3)]*3};   // Voltage across 3 Ohms resistance in Case-2  

            // 6-V voltage source is active
i6=6;                      // 6-A current source                 
V6=i6*{3/[1+(2+3)]};       // Voltage across 3 Ohms resistance in Case-3            
            
V=V4+V5+V6;                // Voltage across 3 Ohms resistance
disp(' Voltage across 3 Ohms resistance is = '+string(V)+' Volt');             
            
              
            
            
                //  p 106             4.3