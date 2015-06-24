//Chapter-3,Example3_17_23,pg 3-44

phi=10^-3                               //magnetic flux

ur=1000                                 //relative permeability of iron

u0=4*%pi*10^-7                          //permeability of free space

A=5*10^-4                               //cross section area of ring

la=2*10^-3                              //air gap

d=20*10^-3                              //mean diameter of ring

li=%pi*d-la                             //mean circumference of ring

//using KVL for magnetic circuit

//AT(total)=AT(iron)+AT(air gap)

ATt=(phi/(u0*A))*((li/ur)+la)

printf("Number of Ampere-Turns required =")

disp(round(ATt))
