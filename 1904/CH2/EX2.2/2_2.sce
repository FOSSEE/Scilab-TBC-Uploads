//To determine the annual power loss
//Page 46
clc;
clear;

Fls=0.15;
Ppl=80*(10^3); //Power Loss at peak load.

Avgpl=Fls*Ppl; //Average Power Loss
TAELCu=Avgpl*8760; //Total annual energy loss

printf('a) The average annual power loss = %g kW\n',(Avgpl/1000))
printf(' b) The total annual energy loss due to the copper losses of the feeder circuits = %g kWh\n',(TAELCu/1000))
