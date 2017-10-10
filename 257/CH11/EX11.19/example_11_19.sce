//there exists one zero at the origin
s=%s
c=-20*log10(2)       //at w=2, y=20*log(w)+c becomes this
k=10.^(c/20)

wc1=10.^((20-c)/20)         //20=20*log10(wc1)-c
y1=poly([1 1/wc1],'s','coeff')

wc2=50
y2=poly([1 1/wc2],'s','coeff')

wc3=300
y3=poly([1 1/wc3],'s','coeff')

c2=20+20*log10(50)        //equation b/w 50 and 300 is y=-20*log(w)+c2. this is at w=50.
y=-20*log10(wc3)+c2

c1=y-20*log10(wc3)        // for slope with 20dB

wc4=10.^((30-c1)/(20))      // 30=20*log(wc4)+c1
y4=poly([1 1/wc4],'s','coeff')

y5=poly([0 1],'s','coeff')   //zero at origin

TF= (k*(y5)*(y3^2))/((y1)*(y2)*(y4))
disp(TF, "transfer fuction = ")
