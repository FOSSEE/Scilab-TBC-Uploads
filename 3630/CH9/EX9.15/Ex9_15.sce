clc;
re=25; //Ohm
Hfe=200; 
Zbase=Hfe*re; //Ohm
rE=200; //Ohm
Zbase=Hfe*(re+rE); //Ohm
disp('kohm',Zbase/1000,"Zbase=");//The answers vary due to round off error

