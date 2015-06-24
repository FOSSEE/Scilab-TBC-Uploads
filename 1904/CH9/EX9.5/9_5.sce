//To determine the setting of the regulator so that the voltage criteria is met
//Page 478
clc;
clear;
l=10; //Length of the feeder
s1=1.75;
ra=0.386;
xa=0.4809;
xd=0.1802;
xL=xa+xd;
Vb=120;
pf=0.85; //Power Factor
S=1100; //Load in kVA
Vln=7.62; //line to neutral voltage in kV
Reff=ra*(l-s1)/2;
Xeff=xL*(l-s1)/2;

//Primary Ratings
CTp=150; //Current Tranformer
PTn=63.5; //POtential Transformer

//R Value of the dial
Rset=(CTp/PTn)*Reff;
Rsetpu=Rset/Vb;

//X value of the dial
Xset=(CTp/PTn)*Xeff;
Xsetpu=Xset/Vb;

VRP=1.0138; //Assumption Made on the Regulating Point
//Output Voltage of the Regulator
Vreg=VRP+((S/Vln)*((Rset*pf)+(Xset*sind(acosd(pf))))/(CTp*Vb)); 


printf('\na) The Regulating Voltage is %g pu V\n',Vreg)
printf('As per Table 9-6; the primary voltage criteria are met by using the R and X settings\n')
printf('b) The Voltage Profiles are given in the result file attached\n')
