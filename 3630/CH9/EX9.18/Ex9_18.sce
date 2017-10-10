clc;
Hfemin1=110;
Hfemax1=140;
Hfe=(Hfemin1*Hfemax1)^0.5; 
Hiemin2=600; //Ohm
Hiemax2=800; //Ohm
Hie=(Hiemin2*Hiemax2)^0.5; //Ohm
rc=460; //Ohm
Av=(Hfe*rc)/Hie;
disp(' ',Av,"Av=");//The answers vary due to round off error


