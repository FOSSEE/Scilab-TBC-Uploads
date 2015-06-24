// Example 8.18.1  page 8.48

clc;
clear;

Cd=7d-12;
B=9d6;
Ca=7d-12;

R=(2*3.14*Cd*B)^-1;
B1=(2*3.14*R*(Cd+Ca))^-1;
R=R/1000;
B1=B1/10^6;
printf("\nThus for 9MHz bandwidth maximum load resistance is %.2f Kohm\nNow if we consider input capacitance of following amplifier Ca then Bandwidth is %.2fMHz\nMaximum post detection bandwidth is half.",R,B1);

//answer for resistance in the book is 4.51Kohm, deviation of 0.01Kohm, while for bandwidth it is 4.51 MHz, deviation of 0.01MHz
