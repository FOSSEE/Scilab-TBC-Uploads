clc;funcprot(0);//EXAMPLE 20.30
// Initialisation of Variables
p1=1;.....//Intake pressure in bar
p5=125;.....//Pressure of the compressed air in bar
rpr=4;.........//Pressure ratio is restricted to 4
//Calculations
X=(log(p5/p1)/log(rpr));
if(X>round(X))
x=round(X)+1;
else
    x=round(X);
end
disp(x,"No of stages:")
esrp=(p5/p1)^(1/x);
disp(esrp,"Exact stage pressure ratios:")
p4=p5/esrp;p3=p4/esrp;p2=p3/esrp;......//Intermediate pressures in bar
printf("\nIntermediate pressures\np4=%f\np3=%f\np2=%f",p4,p3,p2)

