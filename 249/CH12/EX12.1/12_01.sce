clear
clc
//First calculating tg and tl from the tracer curves(fig E12.1)
tg=(8*(9-6)*(0.5)+11*(15-9)*(0.5))/((15-6)*0.5);//sec
tl=40;//sec
vg=0.5;vl=0.1;
Vg=tg*vg;
Vl=tl*vl;
//In terms of void fraction
%G=Vg*10;%L=Vl*10;%Stagnant=(100-%G-%L);
printf("\n fraction of gas is %f",%G)
printf("\n fraction of liquid is %f",%L)
printf("\n fraction of Stangnant liquid is %f",%Stagnant)