// Example 10.4: fT, fb
clc, clear
b_o=160;
f=50; // in Mega-hertz
b_jw=8;
wb=sqrt((2*%pi*f)^2*b_jw^2/(b_o^2-b_jw^2)); // in Mega-rad/sec
fb=wb/(2*%pi); // in Mega-hertz
fT=fb*b_o; // in Mega-hertz
disp(fT,"fT (MHz) =");
disp(fb,"fb (MHz) =");