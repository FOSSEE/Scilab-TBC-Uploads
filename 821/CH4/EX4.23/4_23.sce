T=298;//Temperature in kelvin//
ST=0.2;//Lowered surface tension in dyn per cm//
K=1.37*10^-16;//Boltzman's constant//
AM=(K*T)/ST;//Area per molecule on the surface in cm^2//
A=300;//Total area occupied in cm^2//
N=A/AM;//no. of molecules//
W=3*10^-7;//weight of insoluble substance in grams//
w=W/N;//weight of one molecule in grams//
N1=6.023*10^23;
MW=w*N1;//Molecular weight of substance in grams//
printf('Molecular weight of substance=MW=%f=123',MW);

