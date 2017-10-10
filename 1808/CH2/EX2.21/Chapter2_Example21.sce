clc
clear
//INPUT DATA
//H2+ 0.5(O2+3.773 N2)= H2O+1.887 N2 ;//CHEMICAL EQUATION
//22.3 H2 +18.606 O2 +70.2 N2 = 22.3 H2O+ 7.44 O2+70.2 N2 ;//EXHAUST GASES CHEMICAL EQUATION

//CALCULATIONS
xs=2*1/(0.5*32+0.5*3.773*28);//air fuel ratio From the combustion equation
xa=(1*2)/(0.8343*32+3.148*28);//air fuel ratio From the combustion equation
x=xa/xs;//Equivalent ratio

//OUTPUT
printf('Equivalent ratio is %3.3f',x)
