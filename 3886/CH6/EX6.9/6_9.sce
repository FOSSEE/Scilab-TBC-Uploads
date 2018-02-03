//machine efficiency and effort lost in friction
//For third order system of pulleys
W=1000
VR=(2^3)-1
eta=(1000*100)/(180*7)  //percent
//ideal effort
Pi=(W)/(VR)  //N
P=180  //N
//effort lost in friction
Pl=P-Pi  //N
printf("Efficiency=%.2f percent\nEffort lost in friction=%.2f N",eta,Pl)


