// Example 3.5
// To find number of users for a)system A b)system B c)system C
// Page No.83

clc;
clear;

// Given data
GOS=0.02;                           // Grade of Service (Probability of bloacking)
lamda=2;                            // Average calls per hour
H=(3/60);                           // Call duration in seconds

Au=lamda*H;                         // Traffic intensity per user

// a)To find number of users for System A
C1=19;                             // Number of channels used
A1=12;                             // Traffic intensity from Erlang B chart
U1=round(A1/Au);                   // Number of users per cell
cells1=394;
TU1=U1*cells1;                     // Total number of users
MP1=TU1/(2*10^6)*100;              // Market penetration percentage

// b)To find number of users for System B
C2=57;                            // No. of channels used
A2=45;                            // Traffic intensity from Erlang B chart
U2=round(A2/Au);                  // Number of users per cell
cells2=98;
TU2=U2*cells2;                    // Total no. of users
MP2=TU2/(2*10^6)*100;             // Market penetration percentage

// c)To find number of users for System C
C3=100;                          // Number of channels used
A3=88;                           // traffic intensity from Erlang B chart
U3=round(A3/Au);                 // Number of users per cell
cells3=49;
TU3=U3*cells3;                   // Total no. of users
MP3=TU3/(2*10^6)*100;            // Market penetration percentage

TU=TU1+TU2+TU3;                  // Total number of users in all 3 systems
MP=TU/(2*10^6)*100;              // Combined Market penetration percentage

// Displaying the result in command window
printf('\n Total number of users in system A = %0.0f',TU1);
printf('\n The percentage market penetration of system A  = %0.2f',MP1);
printf('\n \n Total number of users in system B = %0.0f',TU2);
printf('\n The percentage market penetration of system B  = %0.3f',MP2);
printf('\n \n Total number of users in system C = %0.0f',TU3);
printf('\n The percentage market penetration of system C  = %0.3f',MP3);
printf('\n \n Total number of users in all 3 systems = %0.0f',TU);
printf('\n The combined Market penetration percentage of all systems = %0.3f',MP);
