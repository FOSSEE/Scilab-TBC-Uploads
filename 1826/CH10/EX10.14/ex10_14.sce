// Example 10.14, page no-277
clear
clc

e=1.6*10^-19//C
T1=300//K
T2=330//K
eg=0.3
eg2=eg*T2/T1
printf("E_c-E_f330=%.2f eV\n\nAt 330 K, the Fermi energy level lies %.2f eV, bellow the conduction band.",eg2,eg2)
