// Estimating diameter of expansion
clc

D_0 = 300 // original diameter in mm
e = 40 // allowable strain in %
printf("\n Example 7.10")
D_f = (1+e/100)*D_0
printf("\n Maximum diameter to which object can be safely expanded is %d mm.",D_f)

