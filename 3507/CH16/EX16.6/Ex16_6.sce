//chapter16
//example16.6
//page347

Av=100
mv=0.1

Avf=Av/(1+Av*mv)
mv=(Av/Avf-1)/Av

// fall in gain is 6dB so 20log(Av/Av1)=6
// making Av1 as subject we get
Av1=Av/exp(6*log(10)/20)
Avf_new=Av1/(1+Av1*mv)
change=100*(Avf-Avf_new)/Avf

printf("percentage change in gain = %.3f percent \n",change)

// the accurate answer is 8.297 percent but in book it is given as 8.36 percent
