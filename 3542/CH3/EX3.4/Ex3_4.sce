// Example 3.4
// To find number of users for Number of channels (C) a)C=1 b)C=5 c)C=10 d)C=20 e)C=100
// Page No.80

clc;
clear;

// Given data
GOS=0.005;             //G rade of Service
Au=0.1;                // Traffic intensity per user

// a)To find number of users for C=1
C1=1;                  // Number of channels
A1=0.005;              // Total traffic intensity from Erlangs B chart
U1=(A1/Au);            // Number of users
U1=1;                  // Since one user could be supported on one channel

// b)To find number of users for C=5
C2=5;                  // Number of channels
A2=1.13;               // Total traffic intensity from Erlangs B chart
U2=round(A2/Au);       // Number of users

// c)To find number of users for C=10
C3=10;                 // Number of channels
A3=3.96;               // Total traffic intensity from Erlangs B chart
U3=round(A3/Au);       // Number of users

// Answer is varrying due to round off error

// d)To find number of users for C=20
C4=20;                 // Number of channels
A4=11.10;              // Total traffic intensity from Erlangs B chart
U4=round(A4/Au);       // Number of users

// Answer is varrying due to round off error

// e)To find number of users for C=100
C5=100;                // Number of channels
A5=80.9;               // Total traffic intensity from Erlangs B chart
U5=round(A5/Au);       // Number of users

// Displaying the result in command window
printf('\n Total number of users for 1 channel = %0.0f',U1);
printf('\n Total number of users for 5 channel = %0.0f',U2);
printf('\n Total number of users for 10 channel = %0.0f',U3);
printf('\n Total number of users for 20 channel = %0.0f',U4);
printf('\n Total number of users for 100 channel = %0.0f',U5);
