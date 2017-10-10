//Chapter 13 : Thin Film Preparation Techniques and their Applications

clear;

//Variable declaration
I=2*10**-3
V=1

//Calculations
rho=(V/I)*2
delR=rho-800  //change in resitance
A=1/delR      //change in conductance
A=A*10**3

//Result
mprintf("Change in conductivity = %d *10**-3 Ohm**-1-cm**-1",A)
