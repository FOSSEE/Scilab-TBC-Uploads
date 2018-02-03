//===============================================================================
//Chapter 12 Example 3


clc;clear all;

//variable declaration
R2         = 100; 		//resistance of arm  in  Ω
R3         = 32.7; 		//resistance of arm  in  Ω
R4         = 100; 		//resistance of arm  in  Ω
R         = 1.36; 		//resistance of arm  in  Ω
L        = 47.8;		//inducatance in mH


//calculations
R1    = ((R2*R3)/(R4))-R;		//resistance of coil in Ω
L1     = (R2/(R4))*L;		//in case of balanced position of bridge in mH

//result
mprintf("Resistance pf the coil = %3.2f Ω",R1);
mprintf("\ninductance in case of balanced bridge = %3.2f mH",L1);


