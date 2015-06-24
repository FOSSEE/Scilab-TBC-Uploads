clear
clc
M1=148.31;//molar mass of Mg(NO2)2 in gm
m1=6.69;//amount of Mg(NO2)2 dissolved in water
m2=100;//amount of water 
P1=747;//pressure in torr
T2=373;//temperature in K
P=760;//pressure at normal temperature
X=(m1/M1)/((m1/M1)+(m2/18));//mole fraction of solute in solution \
DelP=X*P;//
i=(P-P1)/DelP;//van't hoff factor
v=3;//
alpha=(i-1)/(v-1);//degree of dissociation of salt in solution
printf('alpha=%.3f',alpha)

//page 78

