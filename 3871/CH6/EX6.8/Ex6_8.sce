//===========================================================================
//chapter 6 example 8
clc;clear all;


//variable decalaration
Rm       = 5;		//coil resistance in Ω
Rm1       = 0.00075;		//coil resistance in Ω
Im        = 0.015;		//full-scale defelction current in A
I           = 100; 		//current to be measured in A
T1        =  0.004;		//temperature coeficient of copper in Ω/Ω/°C
T2        =  0.00015;		//temperature coeficient of manganin in Ω/Ω/°C
T          =10; 		//rise in temperature in °C

//calculations
N       = I/(Im);		//multiplying power of shunt
Rs     = Rm/(N-1);	//resistance of manganin shunt in Ω
Rc     = Rm*(1+(T1*T));	//coil resitance with 10°C in temperature in Ω
Rsh    = Rm1*(1+(T2*T));	//shunt resitance with 10°C in temperature in Ω
In      = (Rsh/((Rc+Rsh)))*100;	//new instrument current in A
r        = (In/(Im))*100;		//new instrument reading in A
e       = ((r-I)/(I))*100;		//percentage error in %


//result
mprintf('percentage error %3.3f percentage",e);

