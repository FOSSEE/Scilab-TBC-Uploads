//Example 7-3, Page No - 225

clear
clc

N =12
SINAD1=78
SINAD2 = 6.02*N + 1.76
ENOB =(SINAD1 -1.76)/6.02

printf('The SINAD for 12 bit convertre is %d dB',SINAD2)
printf('\n The ENOB for the converter with SINAD of 78 dB is %.2f bits',ENOB)   
