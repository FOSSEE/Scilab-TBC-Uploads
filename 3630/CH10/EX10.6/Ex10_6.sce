clc;
hic=4000;
hfc=200;
re=hic/hfc; //Ohm
R1=3000; //Ohm
R2=4700; //Ohm
Req=(R1*R2)/(R1+R2); //Ohm
Rs=600; //Ohm
Rth=(Req*Rs)/(Req+Rs);//Ohm
Re=390;//Ohm
R=(re+(Rth/hfc));//Ohm
Zout=(Re*R)/(Re+R);//Ohm
disp('Ohm',Zout,"Zout=");//The answers vary due to round off error
