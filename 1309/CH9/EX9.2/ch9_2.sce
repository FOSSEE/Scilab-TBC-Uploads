clc;
clear;
printf("\t\t\tChapter9_example2\n\n\n");
// Determination of the LMTD for both counterflow and parallel-flow configurations. 
// temperatures of hot fluid in degree F
T1=250;
T2=150;
// temperatures of cold fluid in degree F
t1=100;
t2=150;
// for counterflow
LMTD_counter=((T1-t2)-(T2-t1))/(log((T1-t2)/(T2-t1)));
printf("\nThe LMTD for counter flow configuration is %.1f degree C",LMTD_counter);
// for parallel flow
printf("\nFor a finite heat-transfer rate and  a finite  overall heat-transfer coefficient,\nif parallel flow is to give  equal  outlet  temperatures,\nthen the area  needed  must be infinite which is not feasible economically.");
