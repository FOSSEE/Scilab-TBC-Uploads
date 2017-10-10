clc;
Idss=0.003;
Vgs=-2;
Vgsoff=-6;
Id=Idss*(1-(Vgs/Vgsoff))^2;
disp('mA',Id*1000,"Id=");//The answers vary due to round off error




