//chapter 4
//example 4.2
//page 193,figure 4.21
Vsat=12;Vh=6;
// Vh=(R1/R1+R2)(Vsat-(-Vsat))
R1=10000;// let assume
x=(Vh/(Vsat-(-Vsat)));
disp(x)
R2=((1-.25)*R1)/.25
disp(R2,R1)