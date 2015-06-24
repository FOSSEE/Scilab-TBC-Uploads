clear
clc
YA=0.6497;//
XA=0.578;//
nA=3;//
nB=2;//
N1=(YA-(nA/(nA+nB)))/((nA/(nA+nB))-XA);//amount of liquid phase
N2=(1/(1+N1))*(nA+nB);//amount of vapour phase
NA=YA*((nA+nB)/(1+N1));//mole fraction of ethyl bromide at P
printf('\nNA=%.4f mol',NA)
NB=(1-YA)*((nA+nB)/(1+N1));//
printf('\nNB=%.4f mol',NB)

//page 148
