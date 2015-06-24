// data in question
//input signal(dBm)
Pin=-15
//intercept point of characteristic curve(dBm)
Pip=25
printf("\nPin=-15dBm\tPip=25dBm\n")
//equations and result
printf("\nresult:-")
Pimr=(Pin-Pip)*2     //Pimr in dB; Pin,Pip in dBm
printf("\nintermodulation ratio\nPimr=(Pin-Pip)*2 =%.1f dB",Pimr)