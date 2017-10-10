clc;
Rc=8000; //Ohm
Zin1=1330; //Ohm
rc1=(Rc*Zin1)/(Rc+Zin1);//Ohm
re=25; //Ohm
Zin2=1730; //Ohm
rc2=(Rc*Zin2)/(Rc+Zin2);//Ohm
re=25;//Ohm
Av1=rc1/re;
Av2=rc2/re;
disp(' ',Av1,"Av1=");//The answers vary due to round off error
disp(' ',Av2,"Av2=");//The answers vary due to round off error



