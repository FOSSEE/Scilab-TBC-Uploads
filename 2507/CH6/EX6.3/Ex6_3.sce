clc
clear
printf("Example 6.3 | Page number 154 \n\n");
//Part(a)Find the additional monthly electricity bill
//Part(b)What would be the saving in monthly electricity bill

//Part(a)
printf("Part(a)\n");
I = 4.5 //Amp //Current drawn
V = 220 //V
Electricity_consumption = I*V //Watts
ElectricityUnitPerDay = Electricity_consumption/1000*8 //kWh
MonthlyBill_part_a = ElectricityUnitPerDay * 5 * 30
printf("The additional monthly electricity bill = Rs. %.2f\n\n",MonthlyBill_part_a);

//Part(b)
printf("Part(b)\n");
Q1 = Electricity_consumption*.001 //kW //Rate of heat transfer from heat pump
COP_hp = 4 //COP of heat pump
W = Q1/COP_hp //kW //rate at which energy is consumed
ElectricityUnitPerDay = W*8
MonthlyBill_part_b = ElectricityUnitPerDay * 5 * 30
printf("Saving in monthly electricity bill = Rs. %.2f",MonthlyBill_part_a - MonthlyBill_part_b)
