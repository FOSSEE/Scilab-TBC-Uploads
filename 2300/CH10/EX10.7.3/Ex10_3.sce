//scilab 5.4.1
//windows 7 operating system
//chapter 10:Feedback In Amplifiers
clc
clear
VD=0.1//VD=outputdistortion voltage
VDf=0.05//VDf=output distortion voltage with feedback
A=-80//A=open loop gain of an amplifier
//VDf=VD/(1+(A*B))
B=((VD/VDf)-1)/A//B=reverse transmission factor
format("v",10)
disp("",B,"Reverse transmission factor B=")
