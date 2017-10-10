//chapter 6 example 9//
clc
clear
//electron transit time=tf,bandwidth=Bm,photoconductive gain=G,//
tf=8*(10^-12);//in seconds//
G=60;
Bm=(1/(2*%pi*tf*G))*(10^-8);
printf("\n maximum 3dB bandwidth=%f MHz\n",Bm)