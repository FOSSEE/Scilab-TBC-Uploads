//Chapter 4: Selection of Motor Power Rating
//Example 6
clc;

//Variable Initialization
I=500       //Eated Armature Current in A
Ra=0.01     //Armature Resistance in ohm
P=1000      //Core Loss in W
B=0.5       

//Duty Cycles
tst=10       //Given Interval for accelaration at twice the rated current
tr=10        //Given Interval for running at full load 
tb=10        //Given Interval for deceleration at twice the rated armature current

//Solution

Es=tst*(2*I)**2*Ra+P
Eb=Es
p1s_tr=(I**2*Ra+P)*tr
p1r=I**2*Ra+P
gamma=(1+B)/2
x=(Es+p1s_tr+Eb)/p1r
y=gamma*tst+tr+gamma*tb
ts=(x-y)/B               //Idling interval

fmax=3600/(tst+tr+tb+ts) //Maximum Frequency of drive operation   

mprintf("\nMaximum Frequency of drive operation = %.2f per hour",fmax)
//The answer provided in the textbook is wrong
