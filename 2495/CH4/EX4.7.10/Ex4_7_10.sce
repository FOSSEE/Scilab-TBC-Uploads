clear
clc
PA=300;//in torr
PB=800;//in torr
XA=0.60;//
XB=1-XA;//
P=(PA*XA)+(PB*XB);//pressure at which first bubble of vapour is formed
printf('P=%.1d torr',P)
YA=(XA*PA)/P;//mole fraction of components in first bubble of vapour
printf('\nYA=%.2f ',YA)
YB=(1-YA);//ole fraction of components in first bubble of vapour
printf('\nYB=%.2f ',YB)
XA1=(XA*PB)/(PA+((PB-PA)*XA));//mole fraction of last drop of liquid
printf('\nXA1=%.2f ',XA1)
XB1=(1-XA1);//mole fraction of last drop of liquid
printf('\nXB1=%.2f ',XB1)
P=(PA*XA1)+(PB*XB1);//pressure when the last droplet of liquid remains
printf('\nP=%.1d torr',P)

//page 151
