clc
clear
disp('example 13.3')
pa1=20000 ;pa2=30000  //kva in in 3 ph power
va1=11    ;va2=11  //voltage in kilo volts
pt1=20000 ;pt2=30000//kva of 3 ph transformer
vpt1=11   ;vpt2=11//voltage of primery of transformer
vst1=132  ;vst2=132//voltage of secondary of transformer
xg1=0.5  ;xg2=0.65   //reactance of generator
xt1=0.05 ;xt2=0.05 //reactance of transformer with their own kva
pb=pa2;vbg=va2;vbt=vpt2;//assumeing base quantoties
xtn1=xt1*pb/pa1 ;xtn2=xt2*pb/pa2 //transformer reactance with new base
xgn1=xg1*pb/pa1;xgn2=xg2*pb/pa2
xn1=xtn1+xgn1;xn2=xtn2+xgn2  //reactancee up to fault from each generator
xn=(xn1*xn2)/(xn1+xn2)  //equalent reactance between generator and fault
sckva=pb/xn ; //short circuit KVA
pf=50000  //fault kva rating
xf=pb/pf  //reactance from fault
xx=xf*xn1/(xn1-xf)
x=xx-xn2 //reactance to be added 
bi=(vst1^2)*1000/(pb)
xo=x*bi
printf(" reactance to be added in circuit of generator 2 have %.1f p.u. \n reactance in ohms %.1f",x,xo)