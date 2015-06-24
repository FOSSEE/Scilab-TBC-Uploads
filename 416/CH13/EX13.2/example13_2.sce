clc
clear
disp('example 13.2')
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
disp('(a)')
printf(" equivalent reactance is %.4f p.u \n short circuit KVA %dKVA",xn,sckva)
disp('(b)')
sccb=sckva/(vst1*sqrt(3))
sccg1=sccb*(xn2/(xn1+xn2))*vst1/vpt1
sccg2=sccb*(xn1/(xn1+xn2))*vst2/vpt2
printf(" short circuit current on bus bar side %.1fA \n short circuit current of generator 1 is %.1fA \n short circuit current of generator 2 is %.1fA \n",sccb,sccg1,sccg2)
