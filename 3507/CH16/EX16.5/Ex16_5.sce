//chapter16
//example16.5
//page347

Av=50
Avf=25

// since Avf=Av/(1+Av*mv), we get
mv=(Av/Avf-1)/Av

// without feedback, gain falls from 50 to 40
Av1=50
Av2=40
reduction1=100*(Av1-Av2)/Av1

// with feedback
Av3=25
Av4=Av2/(1+mv*Av2)
reduction2=100*(Av3-Av4)/Av3

printf("percentage reduction in gain : \n with feedback = %.3f percent \n ",reduction1)
printf("without feedback = %.3f perent",reduction2)
