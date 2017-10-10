clc;
re=8.1; //Ohm
rE=1430; //ohm
hfc=220; 
Zbase=hfc*(re+rE); //Ohm
R1=25000; //Ohm
R2=33000; //Ohm
Req=(R1*R2)/(R1+R2); //Ohm
Zin=(Zbase*Req)/(Zbase+Req);//Ohm
disp('kohm',Zin/1000,"Zin=");//The answers vary due to round off error

