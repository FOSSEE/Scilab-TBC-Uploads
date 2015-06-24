clc;
//e.g 27.5
AV=60;
AV1=80;
//80=AV/(1-BETA*AV)
beta=((AV1/AV)-1)/AV1;
disp(beta,"beta=");
beta=1/AV;
disp(beta,"beta=");
