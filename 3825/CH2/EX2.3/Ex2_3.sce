clc
P1=500 //initial pressure of gas in kPa
V1=0.2 //initial volume of gas in  metre cube
P2=100 //final pressure of gas in kPa
gama=1.4 //Cp/Cv ratio of gas
W=P1*V1*log(P1/P2)//work done when volume inversely proportional to pressure
mprintf("W=%fkJ\n",W)//ans may vary due to round off error
V2=((P1*(V1^gama))/P2)^(1/gama)//final volume
mprintf("V2=%fmetre-cube\n",V2)//ans may vary due to roundoff error
W=(P2*V2-P1*V1)/(1-gama)//work done when PV^γ is constant
mprintf("W=%fkJ",W)//ans may vary due to roundoff error



