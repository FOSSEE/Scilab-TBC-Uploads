//there is no pole or zero at the origin as the slope is initially 0

wc1=1
y1=poly([1 1 ],'s','coeff');
 
// mag at wc2 is -20 and wc1 is 0. hence wc1 and wc2 are a decade apart.

wc2=10
y2=poly([1 1/wc2 ],'s','coeff');
disp(y2)

// mag at wc2 is -20 and at w=1000 is 0. hence wc2 and wc3 are decade apart.

wc3=100
y3=poly([1 1/wc3 ],'s','coeff');

wc4=1000       //given
y4=poly([1 1/wc4 ],'s','coeff');

TF= (y2*y3)/(y1*y4)
disp(TF,"transfer function = ")
