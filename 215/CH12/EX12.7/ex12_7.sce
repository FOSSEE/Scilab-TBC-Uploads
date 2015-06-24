clc
//Example 12.7
//Determine wattmeter reading and total power drawn by the load
disp('Given')
disp('Vab=230(0 deg)V')
Vline=230
//Since positive phase sequence is used
disp('The line voltages are')
printf("\n Vab=%d (%d deg)V\tVbc=%d (%d deg) V\tVca=%d (%d deg)V\t",Vline,0,Vline,-120,Vline,120)
Vacamp=Vline;
Vacang=-60;
Vbcamp=Vline;
Vbcang=-120;
//Now we will evaluate phase current
//Let IaA be the phase current
Vanamp=Vline/sqrt(3)
Vanph=-30
//From figure 12.28
Zph=4+%i*15
[Zphmag Zphang]=polar(Zph)
IaAamp=Vanamp/Zphmag
IaAang=Vanph-(Zphang*180)/%pi
IbBang=IaAang+240
printf("\nIaA=%3.2f(%3.2f deg)A\n",IaAamp,IaAang);
//Power rating of each wattmeter is now calculated
//Power measured by wattmeter #1
P1=Vline*IaAamp*cos(((Vacang-IaAang)*%pi)/180)
printf("P1=%d W \n",P1)
//Power measured by wattmeter #2
P2=Vline*IaAamp*cos(((Vbcang-IbBang)*%pi)/180)
printf("P2=%3.2f W \n",P2)
//Net power be P
P=P1+P2
printf("P=%3.2f W \n",P)