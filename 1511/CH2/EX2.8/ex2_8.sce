// Example 2.8 page no-49
clear
clc
L=1400
E_diff=12400/L //eV
del_E=2.15
L2=12400/del_E
printf("\nE2-E1=%.2f eV\n1850 A° line is from 6.71 eV to 0 eV\nTherefore, second photon must be from %.2f to 6.71 eV.\nLambda=%d A°.",E_diff,E_diff,L2)
