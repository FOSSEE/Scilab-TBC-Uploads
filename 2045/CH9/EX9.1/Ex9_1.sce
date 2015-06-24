//pagenumber 424 example 1
clear
//(1) frequency
freque=100*10^3*sqrt(2^(1/3)-(1));
frequ2=100*10^3/sqrt(2^(1/3)-(1));
disp("frequency1   =   "+string((freque))+"hertz");
disp("frequency2   =   "+string((frequ2))+"hertz");
//(2)frequency
freq11=100*10^6;//hertz
freq12=150*10^6;//hertz
freq13=200*10^6;//hertz
freq21=100*10^3;//hertz
freq22=150*10^3;//hertz
freq23=200*10^3;//hertz
frequ1=sqrt(freq11^2+freq12^2+freq13^2);
disp("frequency   =   "+string((frequ1))+"hertz");//correction in the book 269.25mega hertz
frequ1=1/sqrt((1/(freq21^2))+(1/(freq22^2))+(1/(freq23^2)));


disp("frequency   =   "+string((frequ1))+"hertz");//correction in the book
