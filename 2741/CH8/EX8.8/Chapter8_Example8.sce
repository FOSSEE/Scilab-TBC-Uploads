clc 
clear
//Input data 
T1=400;//The given temperature of a black body in K 
T2=4000;//The given temperature of a black body in K 
s=5.672*10^-8;//Stefans constant in M.K.S units 

//Calculations 
R1=s*T1^4;//The radiant emittance of a black body at 400 k in watts/m^2 
R2=(s*T2^4)/1000;//The radiant emittance of a black body at 4000 k in kilo-watts/m^2 

//Output 
printf('The Radiant emittance of a black body at a temperature of ,\n (i) 400 K  is  R = %3.0f watts/m^2 \n (ii) 4000 K  is  R = %3.0f kilo-watts/m^2',R1,R2)
