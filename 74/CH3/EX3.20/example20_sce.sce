// chapter 3
// example 3.20
//page 164,figure 3.74
R1=100*10^3;R2=100*10^3;Rf=470;//given
// gain=(1+2Rf/Rg)(R2/R1)
gain=100;//given
Rg=(((gain/(R2/R1))-1)\(2*Rf));
disp(Rg)//result for Rg so that gain is 100