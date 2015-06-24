//wave guide length
//given
clc
d1_d2=0.4//distance measured between twice minima
VSWR=2.5//voltage standing wave ratio
LEMg=VSWR*%pi*d1_d2//wave guide length
LEMg=round(LEMg*100)/100///rounding off decimals
disp(LEMg,'the wave guide length for given VSWR IN cm:')//cm
