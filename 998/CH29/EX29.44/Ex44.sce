//Ex:44
clc;
clear;
close;
p_t=10*log(2)/log(10);// transmit power in dbW
g_t=42;// Gain of the VSAT transmit antenna in db
g_r=30;//Gain of the satellite receive antenna in db
l_p=207;//Free space path loss at 14HGz
l_b=2;//Beam loss in db
l_a=0.5;//atmospheric loss in db
l_l=0.5;//miscellaneous loss in db
l_o=l_b+l_a+l_l;// other losses in db
p_r=p_t+g_t+g_r-l_p-l_o;//the power received in dbW
P_r=floor(p_r);
printf("The power received=%f dbW",P_r);