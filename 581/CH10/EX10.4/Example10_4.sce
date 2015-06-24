
clear;
clc;

printf("\t Example 10.4\n");

F1342=0.245;        //view factor of 1and 3 occupied by 2 and 4
F14=0.2;            //view factor of 1 occupied by 4

F12=F1342-F14;        //view factor of 1 occupied by 2 
printf("\t view factor of 1 occupied by 2  is :%.3f\n",F12);
//end