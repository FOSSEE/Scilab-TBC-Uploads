clc;
// after changing dc supply terminals from phase a to phase b 
disp('case a');
P=2; // number of poles
te=(2/P)*120; 
printf('Number of mechanical degrees through which rotor moves is %d degrees\n',te);
disp('case b');
P=4; // number of poles
te=(2/P)*120; 
printf('Number of mechanical degrees through which rotor moves is %d degrees\n',te);
disp('case c');
P=6; // number of poles
te=(2/P)*120; 
printf('Number of mechanical degrees through which rotor moves is %d degrees\n',te);
