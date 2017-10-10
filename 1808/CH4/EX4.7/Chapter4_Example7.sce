clc
clear
//INPUT DATA
pb=25;//Saturated vapour in bar
pc=0.2;//Saturated liquid in bar
T111=300;//Temperature in degree C
h1=2800.9;//Enthalpy in kJ/kg
hb=962;//Enthalpy in kJ/kg
h5=2609.9;//Enthalpy in kJ/kg
h3=251.5;//Enthalpy in kJ/kg
S5=7.9094;//Entropy in kJ/kg.K
S3=0.8321;//Entropy in kJ/kg.K
Sb=2.5543;//Entropy in kJ/kg.K
S1=6.2536;//Entropy in kJ/kg.K
x1=0.8;////Quality of steam
h111=3008.9;//Enthalpy in kJ/kg
S111=6.644;////Entropy in kJ/kg.K


//CALCULATIONS
h11=(hb+x1*(h1-hb));//Enthalpy in kJ/kg
S11=(Sb+x1*(S1-Sb));//Enthalpy in kJ/kg
x21=((S11-S3)/(S5-S3));//quality of steam
h21=(h3+(x21*(h5-h3)));//Enthalpy in kJ/kg
nRi=(((h11-h21)/(h11-h3))*100);//Rankine cycle efficiency in percentage
x2=((S1-S3)/(S5-S3));//quality of steam
h2=h3+x2*(h5-h3);//Enthalpy in kJ/kg
nRi2=(((h1-h2)/(h1-h3))*100);//Rankine cycle efficiency in percentage
x211=((S111-S3)/(S5-S3));//quality of steam
h211=(h3+(x211*(h5-h3)));//Enthalpy in kJ/kg
nRi1=(((h111-h211)/(h111-h3))*100);//Rankine cycle efficiency in percentage

//OUTPUT
printf('(i) The Rankine cycle efficiency when steam is dry at turbine inlet is %3.2f percent \n(ii) The Rankine cycle efficiency when steam is saturated is %3.2f percentage \n(iii)The Rankine cycle efficiency when steam is superheated is %3.2f percent ',nRi,nRi2,nRi1)
