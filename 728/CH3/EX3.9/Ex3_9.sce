//Caption:Determine in dB: (a)-reflection loss, (b)-transmission line (c)-return loss.
//Exa: 3.9
clc;
clear;
close;
Z_o=600;//in ohm
Z_s=50;//in ohm
l=200;//in meter
Z_l=500;//in ohm
p=(Z_l-Z_o)/(Z_l+Z_o);
ref_los=10*(log(1/(1-(abs(p))^2)))/(log(10));//in dB
disp(ref_los,"Reflection loss (in dB) =");
//attenuation loss= 0 dB
//Transmisson loss = (attenuation loss)+(reflection loss) = (reflection loss)
tran_los=ref_los;
disp(tran_los,"Transmisson loss (in dB) =");
ret_los=10*((log(abs(p)))/(log(10)));
disp(ret_los,"Return loss(in dB) =");