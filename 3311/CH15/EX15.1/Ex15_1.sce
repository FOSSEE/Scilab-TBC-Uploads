// chapter 15
// example 15.1
// Determine the new value of torque developed by motor
// page-912
clear;
clc;
// given
T1=1500; // in sync Watts
f1=50; // in Hz
N=1440; // in rpm
NS=1500; // in rpm (synchronoous speed)
f2=75; // in Hz
// calculate
// since T1/T2=f2/f1, therefore we get
T2=(f1/f2)*T1;
printf("\n\nThe new value of torque developed by motor is \t T2=%.2f sync. watts",T2);
// Note: The answer vary slightly due to precise calculations