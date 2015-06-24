// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 5 Example 14")
Q1=500;//heat supplied by source in kcal/s
T1=600;//temperature of source in K
T2=300;//temperature of sink in K
disp("clausius inequality can be used for cyclic process as given below;consider 1 for source and 2 for sink")
disp("K=dQ/T=Q1/T1-Q2/T2")
disp("i> for Q2=200 kcal/s")
Q2=200;//heat rejected by sink in kcal/s
disp("K=Q1/T1-Q2/T2 in kcal/s K")
K=Q1/T1-Q2/T2
disp("as K is not greater than 0,therefore under these conditions engine is not possible")
disp("ii> for Q2=400 kcal/s")
Q2=400;//heat rejected by sink in kcal/s
disp("K=Q1/T1-Q2/T2 in kcal/s K")
K=Q1/T1-Q2/T2
disp("as K is less than 0,so engine is feasible and cycle is reversible")
disp("iii> for Q2=250 kcal/s")
Q2=250;//heat rejected by sink in kcal/s
disp("K=Q1/T1-Q2/T2 in kcal/s K")
K=Q1/T1-Q2/T2
disp("as K=0,so engine is feasible and cycle is reversible")
