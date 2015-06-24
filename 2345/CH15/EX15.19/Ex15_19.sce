//Finding potential difference
//Example 15.19(pg. 405)
clc
clear
I1=2/(2+3)//current across 2V battery in circuit EBD in A
Vbe=3*I1//voltage dropp across BE in V
I2=4/(5+3)//current across 4V battery in circuit AFC in A
Vaf=3*I2//voltage dropp across AF in V
V=Vbe+4-Vaf//sum of potential drops starting from E and ending at F
//V is the P.D. between E and F
printf('Thus the P.D. between E and F is %2.1f Volts',V)
