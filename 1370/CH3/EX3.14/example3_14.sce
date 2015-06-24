//example3.14
clc
disp("eta % =98% ,S= 200 kVA, cos(phi)=0.8, Iron loss=200 W")
disp("Therefore, eta % = (200*10^3 *0.8*100)/(200*10^3 *0.8+2000+copper loss)")
disp("0.98[200*10^3 *0.8+2000+copper loss]=200*10^3 *0.8")
c=((200*800)/0.98)-((200*800)-2000)
format(9)
disp(c,"i)Copper loss at full load(in watt)=")
disp("ii)Half load copper loss(in watt) = (n^2)*(W_cu)full load      where n=0.5 as half load")
x=(0.5^2)*1265.306
format(8)
disp(x,"=(0.5^2)*1265.306 =")
disp("Efficiency at half load = (100*10^3 *0.8*100)/(100*10^-3 *0.8+2000+316.326)")
n=(100*800*100)/((0.8*100000)+2000+316.326)
format(7)
disp(n,"eta % = ")
