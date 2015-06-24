clc;clear;
//Example 15.6

//given data
mfuel=0.05;

//from Table A-1
Mair=29;
MC=12;
MH=2;

//calculation
//stochiometric reaction
//C3H8 + ath(O2 + 3.76N2) = 3CO2 + 4H2O + 3.76athN2
//O2 balance
ath=3+5;
//50 percent excess air and some CO in the products
//C3H8 + 7.5(O2 + 3.76N2) = 2.7CO2 + 0.3CO + 4H2O + 2.65O2+ 28.2N2
AF=7.5*4.76*Mair/(3*MC+4*MH);
mair=AF*mfuel;
disp(mair,'the mass flow rate of air in kg air/min');
//from property tables
//C3H8 designated as p
hfp=-118910;
//oxygen as o
hfo=0;
ho280=8150;
ho298=8682;
ho1500=49292;
//nitrogen as n
hfn=0;
hn280=8141;
hn298=8669;
hn1500=47073;
//water as w
hfw=-241820;
hw298=9904;
hw1500=57999;
//carbondioxode as c
hfc=-393520;
hc298=9364;
hc1500=71078;
//carbon monoxide as co
hfco=-110530;
hco298=8669;
hco1500=47517;
qout=1*(hfp)+7.5*(hfo+ho280-ho298)+28.2*(hfn+hn280-hn298)-2.7*(hfc+hc1500-hc298)-0.3*(hfco+hco1500-hco298)-4*(hfw+hw1500-hw298)-2.65*(hfo+ho1500-ho298)-28.2*(hfn+hn1500-hn298);
//for kg of propane
qout=qout/44;
Qout=mfuel*qout/60;
disp(Qout,'the rate of heat transfer from the combustion chamber in kW')

