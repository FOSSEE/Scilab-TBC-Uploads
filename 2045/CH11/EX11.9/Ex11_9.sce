//pagenumber 520 example 9
clear
induct=0.33;//henry
c=0.065*10^-12;//farad
c1=1*10^-12;//farad
r=5.5*10^3;//ohm
//(1) series resonant frequency
freque=(1/(2*(3.14)))*sqrt(1/((induct)*c));
disp("frequency   =   "+string((freque))+"hertz");
//(2)exceed of frequency
ratio1=sqrt((1+(c/c1)))
disp("ratio parallel series   =   "+string((ratio1)));//correction in the book
//(3) quality factor
qualit=(1/r)*sqrt(induct/c);

disp("quality factor   =   "+string((qualit)));



