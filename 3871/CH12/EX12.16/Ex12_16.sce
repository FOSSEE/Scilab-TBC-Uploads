//=====================================================================================
//Chapter 12 example 16

clc;clear all;

//variable decalaration
R4    = 1000;		//resistance in Ω
C3     = 50*10^-12;		//capacitance in F
A        = 314*10^-4;		//area in m**2
D       = 0.3*10^-2;		//thickness in m
er     = 2.3;			//dielectric constant
e0    = 8.854*10^-12;		//dielectric constant
d       = 9;			//loss angle in °
f           = 50;
theta       = 9;

//calculations
C1     = (er*e0*A)/D;		//capacitance in F
tand        = tan(9*%pi/180);
cosd        = cos(9*%pi/180);
w       = 2*%pi*f;
R1     = 1/(w*C1*tand);	//resistance in Ω
C4     = 1/((w^2)*C1*R1*R4);		//variable capacitor in F
R2     = (C3*R4*(cosd^2))/(C1);	//variable resistance in Ω

//result
mprintf("Variable capacitor = %3.2f uF",(C4*10^6));
mprintf("\nvariable resistance = %3.3f Ω",cosd);
mprintf("\nNote:Answer in textbooks is taken tha approximate values")

