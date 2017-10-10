clc;
rc=1300; //Ohm
re=2*22.1; //Ohm
rE=300; //Ohm
Av1=rc/(re+rE);
Av2=4.04;
DelAv=Av2-Av1;
disp(' ',DelAv,"DelAv=");//The answers vary due to round off error


