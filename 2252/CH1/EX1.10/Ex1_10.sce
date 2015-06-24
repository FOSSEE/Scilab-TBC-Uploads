
//refer Fig.1.22(a) in the textbook
//resistance between A and B is removed
//I1 be current in branch CD
//applying KCL
//100-I1 is the current in branch AF
//I1-50 is the current in branch DE
//70-I1 is the current in branch FE
//applying KVL for mesh CDEFC, we get,
I1=56
V=.1*I1+.15*(I1-50)  //thevenin's voltage
r=(.1+.15)*(.1+.15)/(.25+.25)  //thevenin's equivalent resistance
I=V/(r+.05)
mprintf("Current flowing in the branch AB of 0.05 ohm resistance is %f A", I) 
