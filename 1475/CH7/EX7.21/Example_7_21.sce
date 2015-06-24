// Example 7.21 From the following data calculate Paasche Quantity index number
clc;
clear;
Qo=[54 93 18 6 23];
Qn=[250 75 56 8 47];
PnQn=[540 852 448 56 141];
Pn=PnQn./Qn;
PQI=(sum(PnQn)/sum(Pn.*Qo)*100);
disp(PQI,"Paasche Quantity index number");
