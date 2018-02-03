//===========================================================================
//chapter 7 example 20

clc;
clear all;

//variable declaration
IPR	= 8;	//current in line R in A
IPY	= 10;	//current in line Y in A
IPB	= 6;	//current in line B in A
VP	=120;	//voltage in V
pf	= 1;	//power factor

//calculations
W1	= VP*IPR*pf;	//wattage shown by wattmeter having current coil in line R in watts
W2	= VP*IPY*pf;	//wattage shown by wattmeter having current coil in line Y in watts
W3	= VP*IPB*pf;	//wattage shown by wattmeter having current coil in line B in watts
p	= W1+W2+W3;	//power taken by lighting load in watts

//result
mprintf("wattage shown by wattmeter having current coil in line R = %3.2f watts",W1);
mprintf("\nwattage shown by wattmeter having current coil in line Y = %3.2f watts",W2);
mprintf("\nwattage shown by wattmeter having current coil in line B = %3.2f watts",W3);
mprintf("\npower taken by lighting load = %3.2f watts",p);

