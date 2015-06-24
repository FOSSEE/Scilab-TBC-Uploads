funcprot(0)
//Variable Declaration
BER=10**-5  //Maximum allowable bit error rate

//Calculation

x=linspace(8,10,11)  //Eb/N0 ratio represented by x
x1=x**0.5
for i = 1:11
   x(i)=10*log10(x(i))  //Converting x into decibels
end

erf=linspace(0,0,11)  //Initialization for erf function
Pe=linspace(0,0,11)   //Initialization for Probablity of error


for i = 1:10
   k=integrate("exp(-t**2)",'t',0,x1(i))
   erf(i)=k(1)*(2/%pi**0.5)    
   Pe(i)=(1-erf(i))/2       //Probability of error
end
y=linspace(9,9.59,5)
z=linspace(BER,BER,5)
a=linspace(9.59,9.59,5)
b=linspace(0,BER,5)
plot(x,Pe)
plot(y,z)
plot(a,b)
xlabel('','xdB','Pe(x)')

x=9.6   //The Eb/N0 ratio for Maximum BER(dB) from the graph
EbN0=x+2 //Eb/N0 ratio with implementation margin
//Results

printf("The Eb/N0 ratio with allowable BER of 10^-5 and implementation margin of 2dB is %.1f dB",EbN0)



