clc
//deduce possible spacing of the set of planes
//for first order , 2*d*sintheta1=1*lambda...eq(1)
//for second order ,2*d*sintheta2=2*lambda..eq(2)
//for third order, 2*d*sintheta3=3*lambda......eq(3)
//for fourth order, 2*d*sintheta4=4*lambda..............eq(4)
//divide eq(2) by eq(1),we get sintheta2=2*sintheta1
//similarly,sintheta3=3*sintheta1,sintheta4=4*sintheta1
lambda=1.32*10^-10
sintheta1=0.1650
d1=lambda/(2*sintheta1)//for first order n=1,d1=d/n
d2=lambda/(2*2*sintheta1)   //for second order n=2,d2=d/n
d3=lambda/(2*3*sintheta1)       //for third order n=3,d3=d/n
d4=lambda/(2*4*sintheta1)            //for fourth order n=4,d4=d/n
disp("d1="+string(d1)+"m")
disp("d2="+string(d2)+"m")
disp("d3="+string(d3)+"m")
disp("d4="+string(d4)+"m")
