//Example 4.14
clear;
clc;

//Given
Cpw=75.42;//heat capacity of water in J K^-1 mol^-1
T=363; //temperature of water in K
P=1;//pressure in atm
Cpi=37.20;//heat capacity of ice  in J K^-1 mol^-1
delHf=5980;// latent heat of fusion in J mol^-1
mp=273;//melting point of water in K
n=10/18;//moles of ice taken

//To calculate the entropy change
T2=306;//since q=0
q1=n*delHf;//heat in J
q2=n*Cpw*(T2-mp);//heat in J
q3=n*2*Cpi*(T2-T);//heat in J
delS1=q1/mp;//entropy change during 1st step in J K^-1
delS2=n*Cpw*log(T2/mp);//entropy change during 2nd step in J K^-1
delS3=2*n*Cpw*log(T2/T);//entropy change during final step in J K^-1
delS=delS1+delS2+delS3;//total entropy change in J K^-1
mprintf('Entropy change = %f J K^-1',delS);
//end