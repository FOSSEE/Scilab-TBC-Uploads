//(a)Quantisation effects
sig=0.005;
D=4;
B=log2(D/(sig*sqrt(12)));//no.of samples
//value of B to ensure quantisation error to 5mv
//(b)Quantisation error and noise
xn=0:0.2:2.0;
xqn=[0 0 0.5 0.5 1 1 1 1.5 1.5 2 2];
en=xn-xqn;//quantization error
//Quantisation signal top noise ratio
x=0;e=0;
for i=1:length(xn)
    x=x+xn(i)^2;
    e=e+en(i)^2;
end
//method 1
SNRQ=10*log10(x/e)
//method 2
SNRQ=10*log10(x/length(xn))+10.8+20*log10(4)-20*log10(2)
SNRS=10*log10(1.33)+10*log10(12)+20*log10(4)-20*log10(2)
//from results we see that SNRS is statistical estimate