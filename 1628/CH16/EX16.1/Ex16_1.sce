
                    // Example  16.1

        //  ==>   When Lap-wound .

disp('* With the Armature Lap-wound, & Parallel pahts A=8  ');
Z=480;            // No.Of conductor
A=8;              // No.Of poles
e=2.1;            // Average emf in each conductor
E=e*(Z/A);        // Terminal voltage on No load
disp('  Terminal voltage on No load = '+string(E)+' Volt');
If=200;           // Full-load current per conductor 
Il=If*A;          // O/p current on full-load
disp('  O/p current on full-load = '+string(Il)+' Amp');
Po=Il*E;          // Total power on full-load
disp('  Total power generated on full-load = '+string(Po/1000)+' kW');

          //  ==>   When Wave-wound .

disp('* With the Armature Wave-wound, & Parallel pahts A=2  ');
A1=2;               // No.Of poles
E1=e*(Z/A1);        // Terminal voltage on No load
disp('  Terminal voltage on No load = '+string(E1)+' Volt');
Il1=If*A1;          // O/p current on full-load
disp('  O/p current on full-load = '+string(Il1)+' Amp');
Po1=Il1*E1;          // Total power on full-load
disp('  Total power generated on full-load = '+string(Po1/1000)+' kW');




       //  p 631    16.1
