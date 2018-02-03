//===========================================================================
//chapter 10 example 8

clc;clear all;

//variable declaration
S	= 6;		//resistance in Ω
AB	= 25;		//length of AB in cm
BC	= 75;		//length of BC in cm

//calculations
R	= (AB/BC)*S;		//unknown reistance in Ω

//result
mprintf("unknown resistance  = %3.0f Ω ",R);
