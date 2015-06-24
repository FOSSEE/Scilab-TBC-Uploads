// chapter 1 , Example1 13 , pg 25
V=15000//volume(in m^3)
T1=1.3//initial reverberation time(in sec)
aS=(0.165*V)/T1  //total absorption of hall (in Sabine)
T2=(0.165*V)/(aS+300)//revrberation time of hall after adding 300 chairs each having absorption of 1 Sabine
printf("Reverberation time of hall after adding 300 chairs\n")
printf("T2=%.3f sec",T2)
