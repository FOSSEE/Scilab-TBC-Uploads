clc; 
s=4; // speed range
ia=60; // armature current at speed n
disp('Field flux control');
// For constant power load  Ea*Ia is constant therefore ia is conatant at 4*n
printf('The armature current at required speed is %f A\n',ia);
// For constant torque load, speed is 4 times of initial speed therefore flux changes by 1/4 times and hence to maintain torque constant armature current should be four times
printf('The armature current at required speed is %f A\n',4*ia);
disp('Armature voltage control');
// For constant power load  Ea*Ia is constant therefore at 4 times speed armature voltage is 4 times and the armature current gets reduced by 1/4 times
printf('The armature current at required speed is %f A\n',ia/4);
// For constant power load  Ea*Ia is constant therefore at 4 times speed ,flux is constant therefore 
// armature current is constant
printf('The armature current at required speed is %f A\n',ia);
