clc
disp("example =2.1")
printf("\n")
disp("solution for (a)")
nb=8;nf=2;nl=2 //given number of equipments is 8 bulbs 2 fans 2plugs
lb=100;lf=60;ll=100 //corresponding wattages
cl=nb*lb+nf*lf+nl*ll; //total connected load
printf("connected load = 8X100W+2X60W+2X100W=%dW\n",cl);
disp("solution for (b)")
disp("total wattage at different times is")
t1=5;t2=2;t3=2;t4=9;t5=6;
fr=[0 1 0] //12 to 5am period of duration 5h
s=[0 2 1] //5am to 7am period of duration 2h
t=[0 0 0] //7am to 9am period of duration 2h
fo=[0 2 0] //9am to 6pm period of duration 9h
fi=[4 2 0] //6pm to 12pm period of duration 6h
w=[fr;s;t;fo;fi]
wt=[100*w(:,1),60*w(:,2),100*w(:,3)]
wtt=[sum(wt(1,:));sum(wt(2,:));sum(wt(3,:));sum(wt(4,:));sum(wt(5,:))]
printf("\t%dW\n\t%dW\n\t%dW\n\t%dW\n\t%dW",wtt(1),wtt(2),wtt(3),wtt(4),wtt(5))
printf("\nthe maximum demand is %dW\n",max(wtt))
m=max(wtt)
disp("solution for (c)")
printf("\ndemand factor =%3f\n",m/cl)
disp("solution for (d)")//energy consumed is power multiply by corresponding time
energy=[wtt(1,1)*t1;wtt(2,1)*t2;wtt(3,1)*t3;wtt(4,1)*t4;wtt(5,1)*t5]
printf("\t%dWh\n\t%dWh\n\t%dWh\n\t%dWh\n\t%dWh",energy(1),energy(2),energy(3),energy(4),energy(5))
e=sum(energy)
printf("\ntotal energy consumed during 24 hours =%dWh+%dWh+%dWh+%dWh+%dWh=%dWh\n",energy(1),energy(2),energy(3),energy(4),energy(5),e)
disp("solution for (e)");
ec=cl*24;
printf("\nif all devices are used throughout the day the energy consumed in Wh is %dWh \n\t\t%.2fkWh",ec,ec/1000)     
//for 24 hours of max. load