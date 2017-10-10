//there is no pole or zero at the origin as the slope is initially 0

w=1  //given
y1=poly([1 1/w ],'s','coeff');

disp("at wc1 equation is   15=20*log(wc1)")     //at wc1, magnitude is 15
wc1=10^(15/20)
disp(wc1,"hence wc1=")
y2=poly([1 1/wc1],'s','coeff')

disp("equation of 2nd line is y= (-20*log(w))+c")

k1=poly([-20*3 0],'c','coeff');    //at w=1000
c=-k1
disp(c, "where c is")
wc2=10^(45/20)
disp(wc2,"hence wc2 is")
y3=poly([1 1/wc2],'s','coeff')

wc3=1000    //given
y4= poly([1 1/wc3],'s','coeff')   

TF=y1*y4/(y2*y3)     
disp(TF,"transfer function is")         
 



