disp("Experiment: selection of a student out of 100 students ")  
M=30;   //no of students taking mathematics
C=20;   //no of students taking chemistry
T=100;  //total no. of students
PM = M/T  //probability of the selected student taking mathematics
PC = C/T  //probability of the selected student taking chemistry
MnC=10;  //no of students taking mathematics and chemistry
PMnC = MnC/T   //probability of the selected student taking mathematics and chemistry both
PMorC = PM+PC-PMnC; 
disp(PMorC,'probability of the selected student taking mathematics or chemistry')