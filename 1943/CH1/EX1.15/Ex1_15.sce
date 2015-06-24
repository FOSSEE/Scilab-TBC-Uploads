
clc
clear
//Input data
F=2700//Fixed cost of the thermal station per kW of installed capacity per year in Rs,
FO=40//Fuel and operating costs per kWh generated in paise
L=[100,75,50,25]//Load factors
Y=8760//Number of hours in a year of 365 days

//Calculations
FC=(F/Y)*100//Fixed costs per kW per hour in paise
E1=(L(1)/100)//Energy produced in 1 hr with 1 kW plant in kWh
FOC1=(E1*FO)//Fuel and operating cost in paise
TC1=(FC+FOC1)//Total cost per hr in paise
C1=(TC1/E1)//Cost per kWh in paise
E2=(L(2)/100)//Energy produced in 1 hr with 1 kW plant in kWh
FOC2=(E2*FO)//Fuel and operating cost in paise
TC2=(FC+FOC2)//Total cost per hr in paise
C2=(TC2/E2)//Cost per kWh in paise
E3=(L(3)/100)//Energy produced in 1 hr with 1 kW plant in kWh
FOC3=(E3*FO)//Fuel and operating cost in paise
TC3=(FC+FOC3)//Total cost per hr in paise
C3=(TC3/E3)//Cost per kWh in paise
E4=(L(4)/100)//Energy produced in 1 hr with 1 kW plant in kWh
FOC4=(E4*FO)//Fuel and operating cost in paise
TC4=(FC+FOC4)//Total cost per hr in paise
C4=(TC4/E4)//Cost per kWh in paise

//Output
printf('==============================================================================\nLoad      Energy produced    Fixed cost   Fuel and       Total cost     Cost per\nfactor    in 1hr with        per hr      operating cost    per hr        kWh\n(percent) 1kW plant(kWh)    (paise)        (paise)        (paise)        (paise)\n==============================================================================\n%3.0f          %3.0f               %3.0f            %3.0f            %3.0f          %3.0f\n%3.0f          %3.2f              %3.0f            %3.0f            %3.0f          %3.0f\n%3.0f          %3.2f              %3.0f            %3.0f            %3.0f          %3.0f\n%3.0f          %3.2f              %3.0f            %3.0f            %3.0f          %3.0f\n==============================================================================',L(1),E1,FC,FOC1,TC1,C1,L(2),E2,FC,FOC2,TC2,C2,L(3),E3,FC,FOC3,TC3,C3,L(4),E4,FC,FOC4,TC4,C4)
