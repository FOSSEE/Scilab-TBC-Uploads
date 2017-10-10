//chapter 4 Ex 25

clc;
clear;
close;
women=1/3; men=1-women;
womenMarried=1/2*women;
womenChildren=1/3*womenMarried;
menChildren=(2/3)*(3/4)*men;
workerChildren=womenChildren+menChildren;
NoChildren=1-workerChildren;
mprintf("The workers with no children are %1.2f part of total workers",NoChildren);
