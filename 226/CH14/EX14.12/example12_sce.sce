//chapter 14
//example 14.12
//page 623
printf("\n")
printf("given")
Vcc=15;Vee=-15;Av=200000;SR=.5/10^-6;Vo=14;
V=(Vcc-1)-(Vee+1)
Vi=Vo/Av
disp("rise time of output is ")
t=(V/SR)*10^6;
printf("rise time of output is %dus\n",t)