//pagenumber 516 example 3
clear
c1=0.004*10^-6;//farad
c2=0.03*10^-6;//farad
induct=4*10^-3;//henry
//min voltage
mivolt=c2/c1;
disp("min voltage   >=   "+string((mivolt))+"volt");
//frequency
freque=(((1/(2*3.14)))*sqrt((c1+c2)/(induct*c1*c2)));
disp("frequency   =   "+string((freque))+"hertz");
