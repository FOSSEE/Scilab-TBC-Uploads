clear 
clc
C=5;//molarity in mol
mM=100;//molar mass in gm
rho=1.289;//in gm/cm^3
M1=C*mM;//mass of solute
M2=(rho*1000)-M1;//mass of solvent
V=(M2)/18;//volume of water solvent in mol
X=(C)/(V+C);//mole fraction of solute
printf('X=%.4f',X)
B=(C)/(M2/1000)
printf('\nB=%.3f mol/kg',B)

//page 23

