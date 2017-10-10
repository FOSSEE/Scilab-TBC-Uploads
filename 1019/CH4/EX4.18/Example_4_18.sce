//Example 4.14
clear;
clc;

//Given
R=8.314;// gas constant in J K^-1 mol^-1
T=298;//temperature in K
r=2.5;//rato of final volume to initial volume
n=2;//moles of gas

//To determine entropy change
delSgas=R*n*log(r);
qrev=n*R*T*log(r);
delSsurr=-qrev/T;//entropy of the surrounding
delSt=delSgas+delSsurr;//total entropy change in J K^-1
mprintf('(a) delSgas = %f J K^-1 \n delSsurr = %f J K^-1 \n delStotal = %f J K^-1',delSgas,delSsurr,delSt);
delSgas=R*n*log(r);
qirr=qrev-800;
delSsur=-qirr/T;//entropy of the surrounding
delSto=delSgas+delSsur;//total entropy change in J K^-1
mprintf('\n (b) delSgas = %f J K^-1 \n delSsurr = %f J K^-1 \n delStotal = %f J K^-1',delSgas,delSsur,delSto);
mprintf('\n (c) delSgas = %f J K^-1 \n delSsurr = 0 J K^-1 \n delStotal = %f J K^-1',delSgas,delSgas);
//end