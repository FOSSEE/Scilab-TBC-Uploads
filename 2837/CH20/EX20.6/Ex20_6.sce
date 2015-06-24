clc
clear
//Initalization of variables
m=1 //lb
cp=0.26
t2=1800+460 //R
t1=400.95+460 //R
x=0.6
sink=100+460 //R
tm=2600+460 //R
//calculations
Q=m*cp*(t2-t1)
ds=m*cp*log((t2/t1))
tds=ds*(sink)
avail=Q-tds
hf=Q*x/(1-x)
av2=hf*(tm-sink)/(tm)
Qt=Q+hf
av=avail+av2
per=av/Qt *100
//results
printf("Available portion of heat transferred = %.1f percent",per)
