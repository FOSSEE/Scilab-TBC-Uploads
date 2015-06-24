// To determine (i) % winding which remains unprotected (ii)min. value of earthing resistance required to protect 80% of winding 
clear 
clc;
Iph=10000/sqrt(3);// phase voltage of alternator(V)
x=1.8*100*10*1000/(5*Iph);
mprintf("(i) percent winding which remains unprotected=%.2f  \n",x);
Ip=Iph*.2;
R=1.8*1000/(5*Ip);
mprintf("(ii)minimum  value of earthing resistance required to protect 80 percent of winding =%.4f ohms \n",R)
