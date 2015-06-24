clc;
warning("off");
printf("\n\n example7.18 - pg315");
// given
at=0.049;  //[in^2] - cross sectional area of the manometer tubing
aw=15.5;  //[in^2] - cross sectional area of the well
g=32.174;  //[ft/sec^2] - acceleration due to gravity
gc=32.174;
sg=13.45;  //[ specific garvity of mercury
p=62.4;  //[lb/ft^3] - density of water;
pm=sg*p;
deltaz_waterleg=45.2213;
// using the equation A(well)*deltaz(well)=A(tube)*deltaz(tube)
deltazt=70;  //[cm]
deltazw=deltazt*(at/aw);
deltaz=deltazt+deltazw;
deltap_Hg=-pm*(g/gc)*(deltaz/(2.54*12));
disp(deltap_Hg);
deltazw=45.2213;  //[cm]
deltap_tap=deltap_Hg+p*(g/gc)*(deltazw/(12*2.54));
printf("\n\n deltap_tap=%f lbf/ft^2",deltap_tap);
printf("\ndeltap is negative and therefore p1 is greater than p2");
