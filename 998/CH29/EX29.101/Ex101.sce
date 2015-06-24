//Ex:101
clc;
clear;
close;
p_t=10*log(500)/log(10);// in dbW
g_t=60;// in dbW
e_irp=p_t+g_t;
e_p=ceil(e_irp);
B_oi=1;//  input back_off in db
e_s=e_p+B_oi;//saturation EIRP in dbW
printf("The saturation EIRP=%d dbW", e_s);