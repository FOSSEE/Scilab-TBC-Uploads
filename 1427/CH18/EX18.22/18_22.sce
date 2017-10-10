//ques-18.22
//Calculating enthalpy change and entropy change and free energy change and internal energy change
clc
P=1;//pressure (in atm)
L=540;//latent heat of vapourisation of water (in cal/g)
T1=273+0; T2=273+100;//temperature (in K)
n=1;//moles of water
H=n*18*L;//enthalpy change (in cal)
S=H/T2;//entropy change (in cal/K)
G=H-T2*S;//free energy change (in cal)
V1=18;//volume of water at T1 (in mL)
V2=(V1*T2)/T1;////volume of water at T2 (in mL)
U=H-P*(V2-V1);//internal energy change (in cal)
printf("The enthalpy change is %.2f kcal, entropy change is %.2f cal/K, free energy change is %d and internal energy change is %.4f kcal.",H/1000,S,G,U/1000);
