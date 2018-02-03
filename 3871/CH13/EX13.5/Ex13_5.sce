//=====================================================================================
//Chapter 13 example 5
clc;clear all;

//variable declaration
N     = 1;     //number of turns on search coil 
Rc    = 0.025;    //resistance of search coil in Ω
Nw   = 1.5*10^-4;   //number of wb-turns required for deflection of 1 division 
M     = 120000;      //reluctane of magnetic circuit
MMF = 8000;    //magnetic circuit is excited in ampere-turn
f    = 1.5*10^-4;       //fluxmeter without shunt (K/N  = phi/theta)
theta  =120;

//calculations
phi  = (MMF/(M));     //flux produced in WB
//phi  = ((Rs+Rc)/Rs)*((K*theta)/N)
Rs    = (Rc*f*theta)/(phi-(f*theta));    //resistance of shunt in Ω

//result
mprintf("resistance of shunt = %3.2e Ω",Rs);


