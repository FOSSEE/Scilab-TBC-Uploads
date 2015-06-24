//Exa 2
clc;
clear;
close;
// given data :
IC=1500000;// in Rupees
OMC=65000;// in Rupees(annual cost for operating and maintenance)
B=225000;// in Rupees(annual saving and benefits
ScrapValue=300000;// in Rupees
life=30;//in years
Irate=8;//in %
// // using present worth // //
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
BCratio=PWbenefits/PWcost;// formula
disp(BCratio,"BCratio using present worth is : ")


// // using future worth // //
//calculating future worth of savings
FWbenefits1=0;
for i=1:30 
    FWbenefits1=FWbenefits1+B*(1+Irate/100)^(life-i);
end
//calculating future worth of scrap value

FWbenefits2=ScrapValue;
FWbenefits=FWbenefits1+FWbenefits2;// total future worth of benefits
disp(FWbenefits,"Future worth of the benefits");
//calculating Future worth of cost
FWcost1=IC*(1+Irate/100)^life;// the initial cost
//calculating future worth of operating and maintenance cost
FWcost2=0;
for i=1:30 
    FWcost2=FWcost2+OMC*(1+Irate/100)^(life-i);
end
FWcost=FWcost1+FWcost2;// total future worth of cost
disp(FWcost,"Future worth of the cost");
BCratio=FWbenefits/FWcost;// formula
disp(BCratio,"BCratio using future worth is : ")


// // using annual worth // //
//calculating annual worth of savings
AWbenefits1=0;
for i=1:30 
    AWbenefits1=AWbenefits1+B*(1+Irate/100)^(life-i);
end
//calculating annual worth of scrap value

AWbenefits2=ScrapValue;
AWbenefits=AWbenefits1+AWbenefits2;// total Annual worth of benefits
disp(AWbenefits,"Annual worth of the benefits");
//calculating Annual worth of cost
AWcost1=IC*(1+Irate/100)^life;// the initial cost
//calculating annual worth of operating and maintenance cost
AWcost2=0;
for i=1:30 
    AWcost2=AWcost2+OMC*(1+Irate/100)^(life-i);
end
AWcost=AWcost1+AWcost2;// total annual worth of cost
disp(AWcost,"Annual worth of the cost");
BCratio=AWbenefits/AWcost;// formula
disp(BCratio,"BCratio using Annual worth is : ")
disp("It can be seen that B/C ratio is same.")
// Note : answer given in the book is not as much accurate as calculated by scilab 