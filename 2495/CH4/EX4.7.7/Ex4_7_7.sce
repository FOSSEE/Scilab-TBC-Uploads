clear
clc
PA=22.93;//vapour pressure of pure ethyl bromide in kNm^-2
PB=16.93;//vapour pressure of pure propylene bromide in kNm^-2
nA=3;//in mol
nB=2;//in mol
P=20.4;//in kNm^-2
XA=(P-PB)/(PA-PB);//mole fraction of ethyl bromide
printf('XA=%.3f',XA)
XB=(1-XA);//mole fraction of propylene bromide
printf('\nXB=%.3f',XB)
YA=(XA*PA)/P;
printf('\nYA=%.4f',YA)
NA=(nA-(XA*(nA+nB)))/(1-(XA/YA));//amount of vaporized ethyl bromide at P
printf('\nNA=%.4f',NA)
NB=(NA/YA)-NA;//amount of vaporized propylene bromide at P
printf('\nNB=%.4f',NB)
//There are some errors in the solution given in textbook
//page 147
