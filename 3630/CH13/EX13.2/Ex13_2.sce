Idon=0.01;
Vgson=10;
Vgsth=1.5;
k=Idon/(Vgson-Vgsth)^2;
Vdd=10;
R2=1000000;
R1=1000000;
Vg=Vdd*(R2/(R1+R2));
Id=k*((Vg-Vgsth)^2);
disp('mA',Id*1000,"Id=")//The answers vary due to round off error


