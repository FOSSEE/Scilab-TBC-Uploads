clear;
clc;
S=110;
ff=.1;
sg=.05;
f=50;
//supplying to infinite work
mprintf("since power is supplied to infinite work frequency changes are independent of output\n");
mprintf("Since DelPg(0) is proportional to DelP(ref) therefore turbine generation can be reduced by giving a command to servometer of the speed changer to lower the turbine generation by 10 MW\n");
//network is finite
R=(sg*f)/S;
Pg=-(1/R)*(-ff);
mprintf("The drop in hertz per megawatt is %.3f Hz/MW\n",R);
mprintf("Increase in turbine power is %.3f MW",Pg);

