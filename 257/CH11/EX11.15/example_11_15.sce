disp("equation of first straight line is y=-40*log(w)+c1")
c1=poly([40*log10(40) 0],'s','coeff')          //at w=40 , 0=-40*log(40)+c1
disp(c1,"where c1 is ")
A1=-40*log10(10)+c1
disp(A1,"A1=")


disp("equation of second straight line is y=-20*log(w)+c2")
c2=poly([20*log10(40) 0],'s','coeff')           //at w=40 , 0=-20*log(40)+c2
disp(c2,"where c2 is ")
wc1=10^( (-20-20*log10(40))/(-20))               // -20=-20*log(wc1)+c2
disp(wc1,"hence wc1 = ")
y2=poly([1 1/wc1],'s','coeff')
A2=-20*log10(1000)+c2
disp(A2,"A2 = ")

disp("equation of third line is y=-40*log(w)+c3")
c3= A2+ 40*log10(1000)
disp(c3,"where c3 = ")
wc2= 10^((-40-92.0411)/(-40))
disp(wc2," wc2 = ")
