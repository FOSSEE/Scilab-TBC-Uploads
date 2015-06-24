//Chapter-2, Example 2.34, Page 2.65
//=============================================================================
clc
clear

//INPUT DATA
Q=50000;//Rating of the transformer in VA
Pi=500;//Constat losses in W
Pcu=900;//Full load variable losses in W
cosq=0.8;//Power factor

//CALCULATIONS
nFL=((Q*cosq)/((Q*cosq)+Pi+Pcu))*100;//Full load efficiency
L=(Q*sqrt(Pi/Pcu))/1000;//Load at which transformer operates at maximum efficiency in KVA
n=((L*1000)/((L*1000)+Pi+Pi))*100;//Maximum efficiency

//OUTPUT
mprintf('a)Full load efficiency is %3.2f percent \nb)Load at which transformer operates at maximum efficiency is %3.2f KVA \nc)Maximum efficiency is %3.2f percent',nFL,L,n)

//=================================END OF PROGRAM==============================
