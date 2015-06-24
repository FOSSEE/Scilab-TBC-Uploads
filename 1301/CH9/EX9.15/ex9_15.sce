clc;
deltice=10;     //change in temp of ice in celcius
deltwater=20;   //change in temp of water in celcius
mwater=0.5;     //mass of water in kg
cwater=4.185;   //specific heat of water in kJ/kg.celcius
Lice=335;       //latent heat in kJ/kg
cice=2.09;      //specific heat of ice in kJ/kg.celcius
mice=(mwater*cwater*deltwater)/((cice*deltice)+Lice);
disp(mice*1000,"Minimum amount of ice in gram = ");  //displaying result.