clc
//Example 1.7
//Calculate the wt of metallic aluminium deposited in an electrolytic cell
I=50000//Ampere or Coulumbs/sec
//1 hr = 3600 sec
I1=50000*3600//C/hr
//96500 C = 1 gm.eq
//1 mole of aluminium = 3 gm.eq
//1 mole of aluminium = 27 gm
m=I1*(1/96500)*(27/3)/1000//Kg/hr
printf("the wt of metallic aluminium deposited in an electrolytic cell is %f Kg/hr",m);