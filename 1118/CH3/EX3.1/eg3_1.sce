clear;
clc;
ld=100;          //load in KW


v=500;............// voltage in volts
res=1.75*(.000001);...........//restivity in milli ohm per cm sq
nos_cores=2;.......//number of feeder core
l=0.8;.............//length of tx line in km
area=1;...........//area in cm sq
cost_of_energy=0.12;..//cost in Rs per unit
dep=0.1..............//depreciation percentage is 10%

flc=(ld*1000)/500;..//full load current

ra=(res*l*1000*ld);..//resistance* area in ohm-m

pow_loss=2*(flc*flc*ra*.001);...//(power loss*area) for the two cores in the cable

ann_en_loss=pow_loss*365*24;..//annual energy loss in KWH
cost=ann_en_loss*cost_of_energy;..//(cost*area) of annual energy loss in Rs

ann_dep=6*l*1000*dep;........//(ann_dep*area) in Rs

c=(cost/ann_dep);

area=sqrt(c);.......//area in cm sq

d=(area*4/(%pi));
dia=sqrt(d);..........//diameter in cm
printf("\n the most economical size is:  %.2f cm\n ",dia);

