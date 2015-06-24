//Example 7.8. refer fig.7.16.
clc
format(6)
IDSS=10*10^-3
VP=-3.5
Rth=120*10^3 //R1+R2=120 k-ohm
ID=5*10^-3
VDS=5
RS=0.5*10^3
disp("Assume that the JFET is biased in the saturation region. Then the dc drain current is given by")
disp("            ID = IDSS*(1-(VGS/VP))^2")
VGS=VP*(1-(sqrt(ID/IDSS)))
disp(VGS,"Therefore,  VGS(V) =") // textbook answer is wrong
disp("The voltage at the source terminal is")
VS=(ID*RS)-5
disp(VS,"            VS(V) = (ID*RS) - 5 =")
disp("The gate voltage is")
VG=VGS+VS
disp(VG,"            VG(V) = VGS + VS =")
disp("The gate voltage is")
disp("               VG = ((R2 / (R1 + R2))*10) - 5")
R2=(Rth*(VG+5))/10
R2_1=R2*10^-3
disp(R2_1,"Therefore,         R2(k-ohm) =") // textbook answer is wrong
R1=Rth-R2
R1_1=R1*10^-3
disp(R1_1,"and            R1(k-ohm) =")  // textbook answer is wrong
disp("The drain-to-source voltage is")
disp("VDS = 5 - ID*RD - ID*RS - (-5)")
RD=(10-VDS-(ID*RS))/ID
RD1=RD*10^-3
disp(RD1,"     RD(k-ohm) = ")
format(5)
x=VGS-VP
disp(x,"VGS - VP = ")  // textbook has taken a different value hence the wrong answer in textbook
disp("Here, since VDS > (VGS-VP), the JFET is biased in the saturation region, which satisfies the initial assumption")