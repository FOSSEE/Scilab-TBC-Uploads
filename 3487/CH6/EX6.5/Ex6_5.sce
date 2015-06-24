//Chapter 6,Example 6.5 Page 200
clc
clear
Ca = 50 // pF
C = 190 // pF
loss = 0.0085 // loss angle of electrodes
Er = C/Ca
tang = 0.0085
Er1 = Er*tang
E0 = 8.854*10^-1
E1 = E0*Er
jE1 = E0*Er1
printf (" The dielectric constant = %f \n ",Er)
printf (" tan δ = %f \n ",tang)
printf (" E = (%f - j %f ) * 10^-11 F/m \n ",E1,jE1)

//Answer may vary due to round off
