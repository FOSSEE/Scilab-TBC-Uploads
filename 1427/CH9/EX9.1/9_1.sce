//ex1
//Calculating mass of eutetic in alloy
clc
M=1;//Mass of alloy given (in kg)
P1=73;//Percentage of tin in alloy
M=M*1000;//Mass of alloy given (in g)
w1=(P1/100)*M;//Mass of tin in given alloy (in g)
w2=M-w1;//Mass of lead in given alloy (in g)
p1=64;//Percentage of tin in eutectic composition
p2=100-p1;//Percentage of lead in eutectic composition
w3=(w2*p1)/p2;//Mass of tin in eutectic corresponding to w2 of lead (in g)
total=w2+w3;//Total mass of eutectic in alloy (in g)
printf("Total mass of eutectic in alloy = %d g.",total);
