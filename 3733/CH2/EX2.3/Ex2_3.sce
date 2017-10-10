// Example 2_3
clc;funcprot(0);
//Given data
D=[1 2 3 4 5 6 7];// Days
F=[100 320 210 120 50 30 25];//Mean daily flow in m^3/sec

//Calculation
Tf=F(1)+F(2)+F(3)+F(4)+F(5)+F(6)+F(7);
Tfv=24*3600*(Tf);// Total flow volume in m^3
Tfv_1=Tfv/(10^6);// million-m^3
Tfv_2=Tfv/86400;// day-sec-metre
Tfv_3=Tfv/(3350*10^4);// cm
Tfv_4=Tfv_1;// km^2-m as 1 km^2-m =1 million of cu-m.
printf('\nTotal flow volume=%0.1f million-m^3 \nTotal flow volume =%0.1f day-sec-metre \nTotal flow volume=%0.1f cm \nTotal flow volum=%0.1f km^2-m',Tfv_1,Tfv_2,Tfv_3,Tfv_4);
// The answer provided in the textbook is wrong
