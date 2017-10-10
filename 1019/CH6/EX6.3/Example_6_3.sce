//Example 6.3
clear;
clc;

//To calculate the number of ways of distribute
//(i)2 distinguishable objects in two boxes
N=2;//number of objects
l=2;//number of boxes
w=l^N;//number of configurations
mprintf('the number of ways of distribute (i)2 distinguishable objects in 2 boxes = %i',w);

//(ii)2 distinguishable objects in 3 boxes
N=2;//number of objects
l=3;//number of boxes
w=l^N;//number of configurations
mprintf('\n the number of ways of distribute (ii)2 distinguishable objects in 3 boxes = %i',w);

//(iii)2 indistinguishable objects in 2 boxes
N=2;//number of objects
l=2;//number of boxes
w=(3*2*1)/(2*1*1);//number of configurations
mprintf('\n the number of ways of distribute (iii)2 indistinguishable objects in 2 boxes = %i',w);
//(iv)2 indistinguishable objects in 3 boxes
N=2;//number of objects
l=3;//number of boxes
w=(4*3*2*1)/(2*1*2*1);//number of configurations
mprintf('\n the number of ways of distribute (iv)2 indistinguishable objects in 3 boxes = %i',w);
//end