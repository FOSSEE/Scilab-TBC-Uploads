// Example 2.29 page no-90
clear
clc
mung=3800
mupg=1800
muns=1300
mups=500
Vt=0.026
printf("\nFor Germanium at room temperature,\nDp=%d cm^2/sec\nDn=%d cm^2/sec\n\nFor Silicon,\nDp=%d cm^2/sec\nDn=%d cm^2/sec",ceil(mupg*Vt),ceil(mung*Vt),ceil(mups*Vt),ceil(muns*Vt))
