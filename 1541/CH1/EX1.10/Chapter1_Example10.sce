//Chapter-1, Example 1.10, Page 1.26
//=============================================================================
clc
clear

//INPUT DATA
IL=180;//Load current in A
V=220;//Terminal voltage in V
Ra=0.01;//Armature resistance in ohm
Rsh=40;//Shield field resistance in ohm
Wc=1000;//Constant losses in W
x=185;//Load current in A

//CALCULATIONS
Ia=(IL+(V/Rsh));//Armature current in A
Eg=(V+(Ia*Ra));//Generated emf in V
Pm=(V*x)+Wc+(Ia^2*Ra)+(V^2/Rsh);//Output of the prime mover in W
nm=((V*Ia)/Pm)*100;//Mechanical efficiency
ne=((V*IL)/(Eg*Ia))*100;//Electrical efficiency
no=((V*IL)/(Pm))*100;//Overall efficiency

//OUTPUT
mprintf('a)Generated emf is %3.3f V \n b)Output of the prime mover is %3.2f W \n c)Mechanical efficiency is %3.2f percent \n d)Electrical efficiency is %3.2f percent \n e)Overall efficiency is %3.2f percent',Eg,Pm,nm,ne,no)

//=================================END OF PROGRAM==============================
