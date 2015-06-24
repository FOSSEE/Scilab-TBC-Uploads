//pagenumber 519 example 7
clear
c=200*10^-12;//farad
c1=1000*10^-12;//farad
induct=100*10^-6;//henry
//(1) frequency
ceq=(c*c1)/(c+c1);
freque=1/(2*3.14*(sqrt(induct*ceq)));
disp("frequency   =   "+string((freque))+"hertz");//correction in the book
gaimin=c1/c;
disp("gain   =   "+string((gaimin)));
