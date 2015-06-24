
//unit in SI
L1=10^-9
L2=10^-9
Go=4.5*10^-3
RL=50
W=2*%pi*150*10^6
n=sqrt(1/(Go*RL))
disp(n,"n=")
L3=L2/n^2
printf("\nconsidering L1=L2=1nH")
printf("\nL3=L2/n^2=%.4e H",L3)
C=1/((L1+L2)*W^2)
printf("\nC=1/((L1+L2)*W^2)=%.5e F",C)