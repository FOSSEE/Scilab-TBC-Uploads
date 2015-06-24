//Example 12.21
//Program to :
//(a)Calculate second order dispersion coefficient for L1
//(b)Determine the dispersion slope for L2
//(c)Verify that periodic dispersion management map will provide
//sufficient coincidence to facilitate reliable DWDM transmission

clear;
clc ;
close ;

//Given data
L1=160;              //km - PATH LENGTH
L2=20;               //km - PATH LENGTH

//(a)To calculate second order dispersion coefficient for L1
Beeta22=17;          //ps/nm/km - 2nd ORDER DISPERSION COEFF. FOR L2
Beeta21=-Beeta22*L2/L1;
printf("\n\n\t(a)The second order dispersion coefficient for L1 is %0.3f ps/nm/km",Beeta21);

//(b)To determine the dispersion slope for L2
S1=0.075;            //ps/nm^2/km - DISPERSION SLOPE FOR L1
S2=-S1*L1/L2;
printf("\n\n\t(b)The dispersion slope for L2 is %0.1f ps/nm^2/km",S2);

//(c)To verify that periodic dispersion management map will provide
//sufficient coincidence to facilitate reliable DWDM transmission
OP=S1*(L1/L2)+S1*(Beeta22/Beeta21);
if OP==0 then
printf("\n\n\t(c)Periodic dispersion management map will provide sufficient coincidence to facilitate reliable DWDM transmission as S1(L1/L2)+S1(Beeta22/Beeta21)=0");
else
printf("\n\n\t(c)Periodic dispersion management map will not provide sufficient coincidence to facilitate reliable DWDM transmission as S1(L1/L2)+S1(Beeta22/Beeta21)!=0");
end