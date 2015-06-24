//Exa 3
clc;
clear;
close;
//given data :
IC=1500000;// in Rupees
OMC=65000;// in Rupees(annual cost for operating and maintenance)
B=225000;// in Rupees(annual saving and benefits
ScrapValue=300000;// in Rupees
life=30;//in years
Irate=8;//in %
//calculating present worth of savings
PWbenefits1=0;
for i=1:30 
    PWbenefits1=PWbenefits1+B/(1+Irate/100)^i;
end
//calculating present worth of scrap value

PWbenefits2=B/(1+Irate/100)^life;
PWbenefits=PWbenefits1+PWbenefits2;// total present worth of benefits
disp(PWbenefits,"Presnt worth of the benefits");
//calculating present worth of cost
PWcost1=IC;//same the initial cost
//calculating present worth of operating and maintenance cost
PWcost2=0;
for i=1:30 
    PWcost2=PWcost2+OMC/(1+Irate/100)^i;
end
PWcost=PWcost1+PWcost2;// total present worth of cost
disp(PWcost,"Presnt worth of the cost");
// // using conventional B/C ratio // //
BCratio=PWbenefits/PWcost;// formula
disp(BCratio,"BCratio using conventional method is : ")

// // using modified B/C ratio // //
BCratio=(PWbenefits-PWcost2)/IC;// formula
disp(BCratio,"BCratio using conventional method is : ")