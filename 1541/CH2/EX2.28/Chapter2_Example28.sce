//Chapter-2, Example 2.28, Page 2.51
//=============================================================================
clc
clear

//INPUT DATA
Rp=1;//Percentage resistance drop in percentage
Xp=4;//Percentage reactance drop in percentage
cosQ1=0.8;//Lagging power factor
sinQ1=0.6;//Sine of Q1
cosQ2=1;//Power factor
sinQ2=0;//Sine of Q2
cosQ3=0.8;//Leading power factor
sinQ3=0.6;//Sine of Q3

//CALCULATIONS
Vla=(Rp*cosQ1)+(Xp*sinQ1);//Percentage secondary voltage drop for lagging power factor in percentage
V=(Rp*cosQ2)+(Xp*sinQ2);//Percentage secondary voltage drop for unity power factor in percentage
Vle=(Rp*cosQ3)-(Xp*sinQ3);//Percentage secondary voltage drop for leading power factor in percentage

//OUTPUT
mprintf('Secondary voltage drop for lagging power factor is %3.1f percent\nSecondary voltage drop for unity power factor is %3.1f percent\nsecondary voltage drop for leading power factor is %3.1f percent',Vla,V,Vle )

//=================================END OF PROGRAM==============================
