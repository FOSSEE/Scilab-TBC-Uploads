//Example 7.1
clear;
clc;

//Given
R=8.314;//gas constant in J K^-1 mol^-1
T=298;//temperature in K

//To calculate delGmix,delHmix and delSmix
//(i) 10 moles of H + 10 moles of Ne
n1=10;//moles of H
n2=10;//moles of Ne
x1=n1/(n1+n2);//mole fraction of H
x2=n2/(n1+n2);//mole fraction of Ne
delGmix1=R*T*((n1*log(x1))+(n2*log(x2)));//free energy change in J
delSmix1=-delGmix1/T;//entropy change in J K^-1
delHmix1=0;//since all gases are ideal
mprintf('(i) delGmix = %f J \n delHmix = %f J \n delSmix = %f J K^-1',delGmix1,delHmix1,delSmix1);
//(ii) 10 moles of H + 20 moles of Ne
n21=10;//moles of H
n22=20;//moles of Ne
x21=n21/(n21+n22);//mole fraction of H
x22=n22/(n21+n22);//mole fraction of Ne
delGmix2=R*T*((n21*log(x21))+(n22*log(x22)));//free energy change in J
delSmix2=-delGmix2/T;//entropy change in J K^-1
delHmix2=0;//since all gases are ideal
mprintf('\n (ii) delGmix = %f J \n delHmix = %f J \n delSmix = %f J K^-1',delGmix2,delHmix2,delSmix2);
//(iii) 10 moles of Ne + 20 moles of equimolar mixture of Ne and He
delGmix3=delGmix2-delGmix1//free energy change in J
delSmix3=-delGmix3/T;//entropy change in J K^-1
delHmix3=0;//since all gases are ideal
mprintf('\n (iii) delGmix = %f J \n delHmix = %f J \n delSmix = %f J K^-1',delGmix3,delHmix3,delSmix3);
//end