clear
clc
disp("example 3.6")
md=50*10^3;//maximum demand in kW
ecy=0
pst=600*md+2.5*ecy//public supply tariff equation
lfr=0.5; //load factor
rc=20*10^3;//reserve capacity
cik=30000; //capital investiment
inad=0.15;///interest and depreciation
fuc=0.6;fuco=1.4;oct=0.8//fuel consumption//fuel cost//other cost
avl=md*lfr;//average load
ecy=avl*8760  //energy cosumption per year
disp("solution of (a)")
printf(" average load = %dkW \n energy consumton =%dkWh\n annual expenditure is Rs%dperyear\n",avl,ecy,pst)
disp("(b) private steam plant")
ict=md+rc; //installed capacity
caint=cik*ict; //capital investiment
iande=inad*caint; //interest and depreciation
fuelcon=ecy*fuc; //fuel consumption
fucost=fuelcon*fuco; //fuel cost
opwe=oct*ecy //other expenditure
totex=iande+fucost+opwe//total expenditure
printf("\n installed capacity is Rs%d \n capital investiment is Rs%d \n interest and depreciation is Rs.%d \n fuel consumption is Rs.%f \n fuel cost is Rs.%f per year \n wage,repair and other expenses are Rs%f per year \n total expenditure is Rs%e per year",ict,caint,iande,fuelcon,fucost,opwe,totex)