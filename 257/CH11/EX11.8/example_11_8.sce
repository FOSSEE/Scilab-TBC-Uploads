// 6dB/octave=20 dB/decade

y1=poly([0 0 1],'s','coeff');        //zero at origin for initial slope

wc1=0.5
y2=poly([1 1/wc1],'s','coeff')

wc2=1
y3=poly([1 1/wc2],'s','coeff')

wc3=5
y4=poly([1 1/wc3],'s','coeff')

//to find k

disp("equation at w=0.5 is y=20*Log(w)+c")
k1=poly([32-20*log10(1) 0],'s','coeff')               // at w=1    32=20*log(1)+c

disp(k1,"where c is ")

k=poly([32+20*log10(0.5) 0],'s','coeff')                //magnitude at w=0.5

disp("equation of initial line is y=40*(log(w)+c1)")
k2=poly([26-40*log10(0.5) 0],'c','coeff')               // at w=1    32=20*log(1)+c
c1=k2
disp(c1,"where c1 is ")

//now the initial line must have magnitude zero at w=1 for k=1.but at w=1; magnitude is k3 as below, which is due to 'k'
k3=poly([40*log10(1)+26-40*log10(0.5) 0],'c','coeff')

k=10^((40*log10(1)+26-40*log10(0.5))/(20))

TF= k*(y1)/((y2)*(y3)*(y4))
disp(TF,"transfer function = ")

















