//Chapter-1, Example 1.3, Page 19
//=============================================================================
clc;
clear;
//INPUT DATA
la=1000;//length  of aluminium wire in cm
da=0.2;//diameter in cm
pa=2.6*10^-6;//specific resistance of aluminium in ohm cm
pc=1.6*10^-6;//specific resistance of copper in ohm cm
lc=600;//length  of copper wire in cm
i=2;//current in A passing through combination
ia=1.25;//current in A passing through aluminium wire 
//CALCULATIONS
ic=i-ia;//current in A passing through copper wire
//resistance of aluminium wire in ohms
Ra=pa*la/(%pi*(da*da)/4);//(Ra=pa*la/a), where a is cross sectional area of aluminum wire with diameter da  
Rc=ia/ic*Ra;//resistance of copper wire
dc=sqrt(4*pc*lc/Rc);//diameter of copper wire
//OUTPUT
mprintf("Thus the diameter of copper wire  is %1.3f cm \n",dc);
//note:The answer given for diameter in text book is wrong.please check the calculations

//=================================END OF PROGRAM==============================
