//Example 20.8
P=60;//Power (W)
t=1000;//Time (h)
E=P*t/1000;//Energy (kW.h)
cost1=E*0.12;//Cost of usage if it costs 12 cents per kWh ($)
printf('a.Cost of using a 60W bulb for 1000h = $%0.2f',cost1)
bulb_cost1=0.25;//Cost of incandescent bulb ($)
total_cost1=cost1+bulb_cost1;//Total cost of using incandescent bulb for 1000h ($)
printf('\n  Total cost of using an incandescent bulb = $%0.2f',total_cost1)
cost2=cost1/4;//Cost of using a CFL bulb for 1000h considering it consumes 1/4th the power of the incandesent bulb ($)
bulb_cost2=1.50/10;//Investment cost of CFL bulb for the time period of use, considering it lasts 10 times longer ($)
total_cost2=cost2+bulb_cost2;//Total cost of using the CFL bulb for 1000h ($)
printf('\nb.Total cost of using a CFL bulb = $%0.2f',total_cost2)
//Total cost of usage for incandescent bulb has not been calculated in the textbook 
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest

