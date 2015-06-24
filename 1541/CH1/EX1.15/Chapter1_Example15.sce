//Chapter-1, Example 1.15, Page 1.36
//=============================================================================
clc
clear

//INPUT DATA
V=400;//Terminal voltage in V
P=8000;//Motor output power in W
n=0.9;//Motor efficiency
Rsh=180;//Field resistance in ohm
Ra=0.6;//Armature resistance in ohm

//CALCULATIONS
If=(V/Rsh);//Field current in A
Pi=(P/n);//Input power in W
IL=(Pi/V);//Load current in A
Ia=(IL-If);//Armature current in A
Eb=(V-(Ia*Ra));//Back emf in V

//OUTPUT
mprintf('Back emf is %3.0f V',Eb)

//=================================END OF PROGRAM==============================
