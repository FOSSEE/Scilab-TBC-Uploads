//Section-6,Example-5,Page no.-P.55
//To calculate the osmotic pressure under the given conditions.
clc;
T=27+273
B_Sucrose=(0.17/342)/(50/100)
B_Glucose=(0.18/180)/(50/1000)
B_Urea=(0.06/60)/(50/1000)
B=B_Sucrose+B_Glucose+B_Urea
R=0.0821
pi=B*R*T
disp(pi,'Required osmotic pressure(atm)')
