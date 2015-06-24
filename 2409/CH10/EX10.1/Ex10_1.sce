
funcprot(0)

//Variable Declaration
PR=0.01  //The Average power received(watts)
Tb=0.0001  //Bit period(seconds)
N0=10**-7  //Noise power(joule)

//Calculations
Eb=PR*Tb  //Energy per bit received (joule)
x=sqrt(Eb/N0)


erf=integrate("exp(-t^2)","t",0,x)
erf1=erf*(2/%pi**0.5)
BER=(1-erf1)*(10**6)/2

printf("The Bit error rate is %.1f * 10^-6", BER)

