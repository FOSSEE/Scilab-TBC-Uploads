//Wave Propagation : example 13-4 : (pg 651 & 652)
G=45;//antenna gain
nt=25;//antenna noise temperature
nt1=70;//LNB noise temperature
nt2=2;//noise temperature(reciever and passive components)
T=nt+nt1+nt2;//total noise temperature
x=G-10*log10(T);//figure of merit
printf("\nSum of all of the noise temperature contributions \nTs = %.f K",T);
printf("\nThe figure of merit (G/T) \nG/T = G-10.log(Ts) = %.2f dB",x);

