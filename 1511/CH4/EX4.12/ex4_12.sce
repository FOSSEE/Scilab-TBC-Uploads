// Example 4.12 page no-211
clear
clc
ico=2 //micro A
ieo=1.6 //micro A
alfa = 0.98
ie=2 //micro A
T=301.6
vt=T/11600
ve=vt*log(1+(ie/ieo))
printf("\nVe = %f V",ve)
vc=vt*log(1+(alfa*ie/ico))
printf("\nVc = %f V\nV_CE = %f V",vc,vc-ve)

