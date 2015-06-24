clc;
//page no 538
//prob no. 15.2.1
// satellite communication system is given 
ht=36000;//height of satellite in km
f=4000;//freq used in MHz
Gt=15;//transmitting antenna gain
Gr=45;//receiving antenna gain
// A) Determination of free-space transmission loss
L=32.5+20*log10(ht)+20*log10(f);
disp('dB',L,'The free-space transmission loss is');
// B) Determination of received power Pr
Pt=200;//transmitted power in watt
Pr_Pt=Gt+Gr-L;//power ration in dB
Pr_Pt_watt=10^(Pr_Pt/10);//power ratio in watts
//Therefore
Pr=Pt*Pr_Pt_watt;
disp('watts',Pr,'The received power');