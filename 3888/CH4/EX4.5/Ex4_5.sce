//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 4.5
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


LF=0.35;                                                                    //Load factor in percentage
mon_consumption=504;                                                        //Monthly consumption in kWh
max_dem_rate=180;                                                           //Maximum demand  per kWh in Rs
Unit_rate=2.00;                                                             //Unit rate of electricity  per kWh in Rs
max_dem1=mon_consumption/(LF*24*30);                                        //Maximum demand of consumer in kW
mon_bill1=(max_dem1*max_dem_rate)+(Unit_rate*mon_consumption);              //Monthly bill of consumer in Rs
overall_cost1=mon_bill1/mon_consumption;                                    //Overall cost of consumer in Rs 
new_consumption=mon_consumption*1.20;                                       //New consumption of consumer in kWh
max_dem2=new_consumption/(LF*24*30);                                        //Maximum demand of same Load factor in kW
mon_bill2=(max_dem2*max_dem_rate)+(Unit_rate*new_consumption);              //Monthly bill of consumer in Rs
overall_cost2=mon_bill2/new_consumption;                                    //Overall cost of consumer in Rs
max_dem3=mon_consumption/(0.40*24*30);                                      //Maximum demand of increased load factor in kW
mon_bill3=(max_dem3*max_dem_rate)+(Unit_rate*mon_consumption);              //Monthly bill of consumer in Rs
overall_cost3=mon_bill3/mon_consumption;                                    //Overall cost of consumer in Rs

printf("\nThe monthly bill is %.f Rs and the average cost per KWh is %.2f Rs",mon_bill1,overall_cost1);
printf("\nThe overall cost per kWh if the consumption is increased by 20 percentage with the same load factor is %.2f Rs",overall_cost2);
printf("\nThe overall cost per kWh if the consumption remains same but loadfactor is increased to 40 percentage is %.2f Rs",overall_cost3);
