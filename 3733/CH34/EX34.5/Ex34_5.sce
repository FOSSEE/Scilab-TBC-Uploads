// Example 34_5
clc;funcprot(0);
//Given data
//Demand rates
DR_1=200;//0-5kW:Rs./kW
DR_2=150;// 6-10kW:Rs./kW
DR_3=120;//11-15kW:Rs./kW
//Energy rates
Er_1=2;//First-100 kW-hr:Rs. kW-hr
Er_2=1.5;//Next-500 kW-hr:Rs. kW-hr
Er_3=1;//Next-2000 kW-hr:Rs. kW-hr
Er_4=0.8;///Excess over-2000 kW-hr:Rs./kW-hr
Ecpm=2300;// Energy consumption per month in kW-hr

//Calculation
//(a)
DC=(5*DR_1)+(5*DR_2)+(2*DR_3);// Demand charges per month in rupees
EC=(100*Er_1)+(500*Er_2)+(1700*Er_3);// Energy charge in rupees
Mb=DC+EC;// Monthly bill in rupees
Auec=Mb/Ecpm;//Average unit energy cost in Rs./kWh
//(b)
d=30;// Number of days in a month
ML=Ecpm/(d*24);// Maximum load = Average load in kW
DC=ML*200;// Demand charges in Rupees
MMb=DC+EC;// Mininmum monthly bill in Rupees
Uec=MMb/Ecpm;// Unit energy charge in this condition in Rs./kWh
printf('\n(a)Monthly bill of the consumer=Rs.%0.0f \n   Average unit energy cost=Rs.%0.2f kW/h \n(b)Mininmum monthly bill=Rs.%0.0f \n   Unit energy cost for the given  energy consumption condition=Rs.%0.2f /kWh ',Mb,Auec,MMb,Uec);
// The answer vary due to round off error

