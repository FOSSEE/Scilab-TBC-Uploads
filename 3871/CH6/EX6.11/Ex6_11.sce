//===========================================================================
//chapter 6 example 11

clc;clear all;

//variable declaration
Rm1     = 1000;     //resistance of ammeter of A1 in Ω
Rs1     = 0.05;     //resistance  of shunt connected across ammeter A1 in Ω
Rm2     = 1500;     //resistance of ammeter of A2 in Ω
Rs2     = 0.02;     //resistance  of shunt connected across ammeter A2 in Ω
I      =10;         //current in A

//calculations
//in normal connecetion 
I1   = (Rs1/(Rs1+Rm1))*I;       //current through in A
I2   = (Rs2/(Rs2+Rm2))*I;       //current through in A 
//when shunts are interchanged 
I11   = (Rs2/(Rs2+Rm1))*I;       //current through in A
I12   = (Rs1/(Rs1+Rm2))*I;       //current through in A 
A1   = (I11/(I1))*I;            //current through ammeter in A
A2   = (I12/(I2))*I;            //current through ammeter in A

//calculations

mprintf("reading of ammeter A1 = %3.0d A",A1)
mprintf("\nreading of ammeter A2  = %3.0f A",A2);

