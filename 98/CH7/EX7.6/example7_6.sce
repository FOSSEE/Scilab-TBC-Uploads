//Chapter 7
//Example 7_6
//Page 149

clear;clc;

kv=11;
pf=0.8;
r=0.15;
vd=0.15;
tr=0.05;
avd=0.25;

//single phase system
volt_drop=vd*kv*1000;
i1=volt_drop/r;
p1=i1*kv*1000*pf/1000;

//DC two wire system
v=sqrt((p1*1000*tr)/avd);

printf("SINGLE PHASE SYSTEM: \n");
printf("Voltage drop = %.2f*I1 V \n", vd);
printf("Also voltage drop = %d V \n", volt_drop);
printf("Load current = I1 = %d A \n", i1);
printf("Power recieved by consumer = %.2f*10^4 kW \n\n", p1*1e-4);

printf("DC TWO WIRE SYSTEM: \n");
printf("Load current = I2 = %d/V A \n", p1*1000);
printf("Voltage drop = %.2f*%.3f/V \n", p1*1000, tr);
printf("Allowable voltage drop = %.2f V \n", avd);
printf("V = %d V \n\n", v);

