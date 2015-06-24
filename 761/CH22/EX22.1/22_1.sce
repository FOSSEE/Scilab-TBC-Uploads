clc;
// page no 842
// prob no 22.1
PR = -100;//In dBm
// The mobile transmitted power is
PT_dBm =-76-PR;//this is in dBm
disp('or','dBm',PT_dBm,'The mobile transmitted power in dBm is');
PT_mW =10^(PT_dBm/10);
disp('mW',PT_mW,'The mobile transmitted power is');