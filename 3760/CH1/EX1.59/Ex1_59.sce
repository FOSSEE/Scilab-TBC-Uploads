clc;
V1=400; // supply voltage 
E2=50; // induced secondary voltage
l=8; // KW rating of load
pf=0.8; // power factor of load
n=0.85; // efficiency of induction regulator
ip=(l*1000)/(sqrt(3)*pf*n*V1); // input current
vmo=V1-E2; // minimum output voltage
imo=(l*1000)/(sqrt(3)*pf*vmo); // maximum output current
ks=(sqrt(3)*E2*imo)/1000; // KVA rating of secondary winding
Vmo=V1+E2; // maximum output voltage
Imo=(l*1000)/(sqrt(3)*pf*Vmo); // minimum output current
//primary winding has to carry the current induced in it by secondary current due to transformer action and the difference of input current and output current 
ipm=((Imo*E2)/V1)+ip-Imo; // maximum primary winding current
kp=(sqrt(3)*V1*ipm)/1000;
printf('Rating of primary winding is %f KVA\n',kp);   
printf('Rating of secondary winding is %f KVA\n',ks);
