//Two bodies hung to the rope ends
//refer fig. 15.12 (a),(b) and (c)
//Let a be the acceleration with which the system moves and T be the tension in the string
//Considering 300 N body
//T-(300*a)/(9.81)=300
//Considering 450 N body
//T+(450*a)/(9.81)=450
//solving we get
a=(450-300)*9.81/(450+300)  //m/sec^2
T=300+((300*1.962)/(9.81)) //N
printf("\na=%.4f m/sec^2\nT=%.0f N",a,T)
