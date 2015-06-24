clc;
clear;
printf("\t\t\tChapter9_example1\n\n\n");
// determination of counterflow and parallel-flow configurations. 
// temperatures of hot fluid in degree C
T1=100;
T2=75;
// temperatures of cold fluid in degree C
t1=5;
t2=50;
// for counterflow
LMTD_counter=((T1-t2)-(T2-t1))/(log((T1-t2)/(T2-t1)));
printf("\nThe LMTD for counter flow configuration is %.1f degree C",LMTD_counter);
// for parallel flow
LMTD_parallel=((T1-t1)-(T2-t2))/(log((T1-t1)/(T2-t2)));
printf("\nThe LMTD for parallel flow configuration is %.1f degree C",LMTD_parallel);