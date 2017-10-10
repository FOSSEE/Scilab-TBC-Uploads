y=poly([0 1],'s','coeff')     //pole at origin

c=20+20*log10(5)         //at w=5, y=20
k=10.^(c/20)             //at w=1, y=c

wc1=5        //given
y1=poly([1 1/wc1],'s','coeff')

c1=20+40*log10(5)           // second line is y=-40*log(w)+c1 . this is at w=5.

wc2= 10.^((-40-c1)/(-40))
y2=poly([1 1/wc2],'s','coeff')

TF= k*y2/(y*y1)
disp(TF,"transfer function = ")