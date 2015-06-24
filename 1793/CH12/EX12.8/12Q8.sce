clc
PI=28
OCR=3.2
To=160
Kn=0.11+0.0037*PI
Ko=OCR^0.8 * Kn
Cu=Ko*To
printf('the average undrained shear strength of the clay = %f kN/m^2',Cu)
