//pagenumber 205 example 5
clear
//given
reveri=2*10^-6;//ampere at 25
icb=2*10^-6*2^5;//ampere at 75
basevoltag=5;//volt
//(1)
rb=(-0.1+basevoltag)/(icb);
disp("max resistance   =   "+string((rb))+"ohm");//correction in the book
//(2)
basevoltag=1;
rb=100*10^3;
reveri=(-0.1+basevoltag)/rb;
q=reveri/(2*10^-6);
w=q^10;
u=log(w)
t=25+(u/log((2)));
disp("baseresistance   =   "+string((rb))+"ohm");
disp("temperature   =   "+string((t))+"celsius");
