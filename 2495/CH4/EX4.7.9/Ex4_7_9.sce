clear
clc
PA=300;//in torr
PB=800;//in torr
YA=0.25;
XA=(YA*PB)/(PA-((PA-PB)*YA));//mole fraction of component A
printf('XA=%.4f',XA)
XB=(1-XA)
P=(PA*XA)+(PB*XB);//total pressure P in torr
printf('\nP=%.1f torr',P)
P0=760;//in torr
XA1=(P0-PB)/(PA-PB);//mole fraction at normal boiling point
printf('\nXA1=%.2f ',XA1)
XB1=(1-XA1);//
printf('\nXB1=%.2f ',XB1)
P1=(PA*YA)+(PB*(1-YA));//
printf('\nP1=%.1d torr ',P1)
YA1=(YA*PA)/P1;//
printf('\nYA1=%.3f ',YA1)
YB1=(1-YA1);//
printf('\nYB1=%.3f ',YB1)

//page 149
