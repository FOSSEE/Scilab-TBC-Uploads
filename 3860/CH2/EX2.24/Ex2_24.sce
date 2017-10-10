//Example 2.24: Reduce expression using Boolean laws 
clc // Clears the console
disp('w''xy + wz + xz + w''y''z + w''xy'' + wx''z')
disp('= wz + w''x + xz +w''y''z')
disp('= wz + w''x + w''y''z  since wz $ w''x = xz') 
disp('But  wz +w''y''z = z(w + w''y'') = z(w + y'')')
disp('= wz + w''x + y''z ')
//the reduced expression is displayed.
