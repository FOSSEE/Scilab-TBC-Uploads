//there is a pole at the origin and contribution of gain k

k=10^(14/20)          //20*log(k)=14

disp("equation of starting line is y=-20*log(w)+14")
wc1=10^(0)
disp(wc1,"hence at wc1, 14=-20*log(wc1)+14. that is wc1 = ")
y1=poly([1 1/wc1],'s','coeff')

disp("equation of next line is y=-40*log(w)+14")
wc2=10^(40/40)            //-40*log(wc2)=-40
disp(wc2,"wc2=")
y2=poly([1 1/wc2],'s','coeff')

wc3=50              //given
y3=poly([1 1/wc3],'s','coeff')

TF= k*(y2)/((y1)*(y3))
disp(TF,"transfer function = ")
