//     6dB/octave = 20dB/decade

wc1=2
y1=poly([1 1/wc1],'s','coeff')

//to find k
c1=60+40*log10(4)       //y=-40*log(w)+c1
Y2=-40*log10(2)+c1           //at w=2

c2=Y2+20*log10(2)           // y= -20*log(2)+c2
Y1=-20*log10(1)+c2         //at w=1
disp(Y1)
k=10.^(Y1/20)

wc2=10.^((36-c1)/(-40))      //from graph
y2=poly([1 1/wc2],'s','coeff')

c3=36+60*log10(wc2)          //equation of line with sloe -60dB
wc3=10.^((-18-c3)/(-60))
y3=poly([1 1/wc3],'s','coeff')

c4= -18+20*log10(wc3)
wc4=10.^(-54-c4)/(-20)
y4=poly([1 1/wc4],'s','coeff')
y5=poly([0 1],'s','coeff')      // pole at origin

TF=(k*y3^2)/((y1)*(y2)*(y5)*(y4))
disp(TF, "TF = ")

