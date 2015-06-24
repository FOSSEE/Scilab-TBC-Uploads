
Po=10D+3  //output power of each motor at full load
e=.85  //efficiency at full load
Pi=Po/e
W=Pi-Po  //total losses at full load for each motor
//calculating half load efficiency for motor A
Wc=500  //constant losses
Wcu1=(W-Wc)/2^2  //copper losses
W1=Wc+Wcu1  //total losses
P1=Po/2  //output
e1=P1/(P1+W1)*100
mprintf("Efficiency at half load for motor A=%f percent\n", e1)
//calculating half load efficiency for motor B
Wc=600  //constant losses
Wcu2=(W-Wc)/2^2  //copper losses
W2=Wc+Wcu2  //total losses
P2=Po/2  //output
e2=P2/(P2+W2)*100
mprintf("Efficiency at half load for motor B=%f percent", e2)
