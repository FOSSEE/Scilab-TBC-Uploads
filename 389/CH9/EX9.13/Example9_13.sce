clear;
clc;

// Illustration 9.13:

printf('Illustration 9.13\n\n');

//**************************Calculation Of Minimum Reflux ratio************************//
// Page: 436
printf('Page: 436\n\n');

//***Data***//
// C1:CH4 C2:C2H6 C3:n-C3H8 C4:n-C4H10 C5:n-C5H12 C6:n-C6H14
// zF = [zF(C1) zF(C2) zF(C3) zF(C4) zF(C5) zF(C6)]
zF = [0.03 0.07 0.15 0.33 0.30 0.12];// [mole fraction]
LF_By_F = 0.667;
Temp = 82;// [OC]
ylk = 0.98;
yhk = 0.01;
//**********//

// Data = [m HG HL(30 OC);m HG HL(60 OC);m HG HL(90 OC);m HG HL(120 OC);]
Data1 = [16.1 12790 9770;19.3 13910 11160;21.8 15000 12790;24.0 16240 14370];// [For C1]
Data2 = [3.45 22440 16280;4.90 24300 18140;6.25 26240 19890;8.15 28140 21630];// [For C2]
Data3 = [1.10 31170 16510;2.00 33000 20590;2.90 35800 25600;4.00 39000 30900];// [For C3]
Data4 = [0.35 41200 20350;0.70 43850 25120;1.16 46500 30000;1.78 50400 35400];// [For C4]
Data5 = [0.085 50500 24200;0.26 54000 32450;0.50 57800 35600;0.84 61200 41400];// [For C5]
Data6 = [0.0300 58800 27700;0.130 63500 34200;0.239 68150 40900;0.448 72700 48150];// [For C6]

// T = [Temparature]
T = [30;60;90;120];

// Flash vaporisation of the Feed:
// Basis: 1 kmol feed throughout
// After Several trials, assume:
F = 1;// [kmol]
GF_By_F = 0.333;
LF_By_GF = LF_By_F/GF_By_F;
m82 = zeros(6);
y = zeros(6);
m82(1) = interpln([T';Data1(:,1)'],Temp);// [For C1]
m82(2) = interpln([T';Data2(:,1)'],Temp);// [For C2]
m82(3) = interpln([T';Data3(:,1)'],Temp);// [For C3]
m82(4) = interpln([T';Data4(:,1)'],Temp);// [For C4]
m82(5) = interpln([T';Data5(:,1)'],Temp);// [For C5]
m82(6) = interpln([T';Data6(:,1)'],Temp);// [For C6]
for i = 1:6
    y(i) = zF(i)*(LF_By_GF+1)/(1+(2/m82(i)));
end
Sum = sum(y);
// Since Sum is sufficiently close to 1.0, therefore:
q = 0.67;// [LF_By_F]
// Assume:
// C3: light key
// C5: heavy key
zlkF = zF(3);// [mole fraction]
zhkF = zF(5);// [mole fraction]
ylkD = ylk*zF(3);// [kmol]
yhkD = yhk*zF(5);// [kmol]

// Estimate average Temp to be 80 OC
m80 = zeros(6);
alpha80 = zeros(6);
m80(1) = interpln([T';Data1(:,1)'],80);// [For C1]
m80(2) = interpln([T';Data2(:,1)'],80);// [For C2]
m80(3) = interpln([T';Data3(:,1)'],80);// [For C3]
m80(4) = interpln([T';Data4(:,1)'],80);// [For C4]
m80(5) = interpln([T';Data5(:,1)'],80);// [For C5]
m80(6) = interpln([T';Data6(:,1)'],80);// [For C6]
for i = 1:6
    alpha80(i) = m80(i)/m80(5);
end
// By Eqn. 9.164:
yD_By_zF1 = (((alpha80(1)-1)/(alpha80(3)-1))*(ylkD/zF(3)))+(((alpha80(3)-alpha80(1))/(alpha80(3)-1))*(yhkD/zF(5)));// [For C1]
yD_By_zF2 = (((alpha80(2)-1)/(alpha80(3)-1))*(ylkD/zF(3)))+(((alpha80(3)-alpha80(2))/(alpha80(3)-1))*(yhkD/zF(5)));// [For C2]
yD_By_zF6 = (((alpha80(6)-1)/(alpha80(3)-1))*(ylkD/zF(3)))+(((alpha80(3)-alpha80(6))/(alpha80(3)-1))*(yhkD/zF(5)));// [For C6]
// The distillate contains:
yC1 = 0.03;// [kmol C1]
yC2 = 0.07;// [kmol C2]
yC6 = 0;// [kmol C6]
// By Eqn 9.165:
deff('[y] = g1(phi)','y = (((alpha80(1)*zF(1))/(alpha80(1)-phi))+((alpha80(2)*zF(2))/(alpha80(2)-phi))+((alpha80(3)*zF(3))/(alpha80(3)-phi))+((alpha80(4)*zF(4))/(alpha80(4)-phi))+((alpha80(5)*zF(5))/(alpha80(5)-phi))+((alpha80(6)*zF(6))/(alpha80(6)-phi)))-(F*(1-q))');
// Between alphaC3 & alphaC4:
phi1 = fsolve(3,g1);
// Between alphaC4 & alphaC5:
phi2 = fsolve(1.5,g1);
// From Eqn. 9.166:
// Val = D*(Rm+1)
// (alpha80(1)*yC1/(alpha80(1)-phi1))+(alpha80(2)*yC2/(alpha80(2)-phi1))+(alpha80(3)*ylkD/(alpha80(3)-phi1))+(alpha80(4)*yD/(alpha80(4)-phi1))+(alpha80(i)*yhkD/(alpha80(5)-phi1))+(alpha80(6)*yC6/(alpha80(6)-phi1)) = Val.....................(1)
// (alpha80(1)*yC1/(alpha80(1)-phi2))+(alpha80(2)*yC2/(alpha80(2)-phi2))+(alpha80(3)*ylkD/(alpha80(3)-phi2))+(alpha80(4)*yD/(alpha80(4)-phi2))+(alpha80(i)*yhkD/(alpha80(5)-phi2))+(alpha80(6)*yC6/(alpha80(6)-phi2)) = Val ....................(2)
// Solving simultaneously:
a = [-alpha80(4)/(alpha80(4)-phi1) 1;-alpha80(4)/(alpha80(4)-phi2) 1];
b = [(alpha80(1)*yC1/(alpha80(1)-phi1))+(alpha80(2)*yC2/(alpha80(2)-phi1))+(alpha80(3)*ylkD/(alpha80(3)-phi1))+(alpha80(i)*yhkD/(alpha80(5)-phi1))+(alpha80(6)*yC6/(alpha80(6)-phi1));(alpha80(1)*yC1/(alpha80(1)-phi2))+(alpha80(2)*yC2/(alpha80(2)-phi2))+(alpha80(3)*ylkD/(alpha80(3)-phi2))+(alpha80(i)*yhkD/(alpha80(5)-phi2))+(alpha80(6)*yC6/(alpha80(6)-phi2))];
soln = a\b;
yC4 = soln(1);// [kmol C4 in the distillate]
Val = soln(2);
// For the distillate, at a dew point of 46 OC
ydD = [yC1 yC2 ylkD yC4 yhkD yC6];
D = sum(ydD);
yD = zeros(6);
m46 = zeros(6);
alpha46 = zeros(6);
m46(1) = interpln([T';Data1(:,1)'],46);// [For C1]
m46(2) = interpln([T';Data2(:,1)'],46);// [For C2]
m46(3) = interpln([T';Data3(:,1)'],46);// [For C3]
m46(4) = interpln([T';Data4(:,1)'],46);// [For C4]
m46(5) = interpln([T';Data5(:,1)'],46);// [For C5]
m46(6) = interpln([T';Data6(:,1)'],46);// [For C6]
for i = 1:6
    alpha46(i) = m46(i)/m46(5);
    yD(i) = ydD(i)/D;
    // Ratio = yD/alpha46
    Ratio1(i) = yD(i)/alpha46(i);
end
// mhk = mC5 at 46.6 OC, the assumed 46 OC is satisfactory.

// For the residue, at a dew point of 46 OC
xwW = [zF(1)-yC1 zF(2)-yC2 zF(3)-ylkD zF(4)-yC4 zF(5)-yhkD zF(6)-yC6];
W = sum(xwW);
xW = zeros(6);
m113 = zeros(6);
alpha113 = zeros(6);
m113(1) = interpln([T';Data1(:,1)'],113);// [For C1]
m113(2) = interpln([T';Data2(:,1)'],113);// [For C2]
m113(3) = interpln([T';Data3(:,1)'],113);// [For C3]
m113(4) = interpln([T';Data4(:,1)'],113);// [For C4]
m113(5) = interpln([T';Data5(:,1)'],113);// [For C5]
m113(6) = interpln([T';Data6(:,1)'],113);// [For C6]
for i = 1:6
    alpha113(i) = m113(i)/m113(5);
    xW(i) = xwW(i)/W;
    // Ratio = yD/alpha46
    Value(i) = alpha113(i)*xW(i);
end
// mhk = mC5 at 114 OC, the assumed 113 OC is satisfactory.
Temp_Avg = (114+46.6)/2;// [OC]
// Temp_avg is very close to the assumed 80 OC
Rm = (Val/D)-1;
printf("Minimum Reflux Ratio is %f mol reflux/mol distillate\n \n",Rm);
printf("*****************Distillate Composition*********************\n");
printf("C1\t \t \t \t: %f\n",yD(1));
printf("C2\t \t \t \t: %f\n",yD(2));
printf("C3\t \t \t \t: %f\n",yD(3));
printf("C4\t \t \t \t: %f\n",yD(4));
printf("C5\t \t \t \t: %f\n",yD(5));
printf("C6\t \t \t \t: %f\n",yD(6));
printf("\n");
printf("*****************Residue Composition*********************\n");
printf("C1\t \t \t \t: %f\n",xW(1));
printf("C2\t \t \t \t: %f\n",xW(2));
printf("C3\t \t \t \t: %f\n",xW(3));
printf("C4\t \t \t \t: %f\n",xW(4));
printf("C5\t \t \t \t: %f\n",xW(5));
printf("C6\t \t \t \t: %f\n",xW(6));
printf("\n");

//**********************Number of Theoretical stage***********************//
// Page:440
printf('Page: 440\n\n');

for i = 1:6
    alpha_av(i) = (alpha46(i)*alpha113(i))^0.5;
end
alphalk_av = alpha_av(3);
// By Eqn. 9.167:
xhkW = xwW(5);
xlkW = xwW(3);
Nm = log10((ylkD/yhkD)*(xhkW/xlkW))/log10(alphalk_av)-1;
// Ratio = yD/xW
for i = 1:6
    Ratio2(i) = (alpha_av(i)^(Nm+1))*yhkD/xhkW;
end
// For C1:
// yC1D-Ratio(1)*xC1W = 0
// yC1D+xC1W = zF(1)
// Similarly for others
for i = 1:6
    a = [1 -Ratio2(i);1 1];
    b = [0;zF(i)];
    soln = a\b;
    yD2(i) = soln(1);// [kmol]
    xW2(i) = soln(2);// [kmol]
end
D = sum(yD2);// [kmol]
W = sum(xW2);// [kmol]
// The distillate dew point computes to 46.6 OC and the residue bubble point computes to 113 OC, which is significantly close to the assumed.
printf("Minimum number of theoretical stage is: %f\n",Nm);
printf("\n");

//***************Product composition at R = 0.8***********************//
// Page:441
printf('Page: 441\n\n');

// Since C1 and C2 do not enter in the residue nor C6 in the distillate, appreciably at total reflux or minimum reflux ratio, it will be assumed that they will not enter R = 0.8. C3 and C5 distribution are fixed by specifications. Only that C4 remains to be estimated.
// R = [Infinte 0.8 0.58] [Reflux ratios For C4]
R = [%inf 0.8 0.58];
// Val = R/(R+1)
Val = R./R+1;
// ydD = [Inf 0.58] 
y4D = [0.1255 0.1306];
yC4D = (((1-Val(2))/(1-Val(3)))*(y4D(2)-y4D(1)))+y4D(1);// Linear Interpolation
// For Distillate:
Sum1 = sum(Ratio1);
x0 = Ratio1./Sum1;
printf("For the reflux ratio of 0.8\n");
printf("*****************Distillate Composition*********************\n");
printf("\t\t\t Liquid reflux in equilibrium with the distillate vapour\n");
for i = 1:6
    printf("C%d\t \t \t \t: %f\n",i,x0(i));
end
// For boiler:
Sum2 = sum(Value);
yNpPlus1 = Value./Sum2;
printf("*****************Distillate Composition*********************\n");
printf("\t\t\t Reboiler vapour in equilibrium with the residue\n");
for i = 1:6
    printf("C%d\t \t \t \t: %f\n",i,yNpPlus1(i));
end
printf("\n");

//**********Number Of Theoretical Trays***************//
// Page: 443
printf('Page: 443\n\n');

R = 0.8;// [reflux ratio]
// From Eqn. 9.175
intersection = (zlkF-(ylkD/D)*(1-q)/(R+1))/(zhkF-(yhkD/D)*(1-q)/(R+1));
// Enriching Section:
y1 = zeros(5);
L = R*D;// [kmol]
G = L+D;// [kmol]
// Assume: Temp1 = 57 OC
// alpha57 = [C1 C2 C3 C4 C5]
alpha57 = [79.1 19.6 7.50 2.66 1];
// From Eqn. 9.177, n = 0:
for i = 1:5
    y1(i) = (L/G)*x0(i)+((D/G)*yD(i));
    Val57(i) = y1(i)/alpha57(i);
end
x1 = Val57/sum(Val57);
mC5 = sum(Val57);
Temp1 = 58.4; // [OC]
// Liquid x1's is in equilibrium with y1's.
xlk_By_xhk1 = x1(3)/x1(5);
// Tray 1 is not the feed tray.
// Assume: Temp2 = 63 OC
// alpha63 = [C1 C2 C3 C4 C5]
alpha63 = [68.9 17.85 6.95 2.53 1.00];
// From Eqn. 9.177, n = 1:
for i = 1:5
    y2(i) = (L/G)*x1(i)+((D/G)*yD(i));
    Val63(i) = y1(i)/alpha63(i);
end
mC5 = sum(Val63);
x2 = Val63/sum(Val63);
xlk_By_xhk2 = x2(3)/x2(5);
// The tray calculation are continued downward in this manner.
// Results for trays 5 & 6 are:
// Temp 75.4 [OC]
// x5 = [C1 C2 C3 C4 C5]
x5 = [0.00240 0.0195 0.1125 0.4800 0.3859];
xlk_By_xhk5 = x5(3)/x5(5);
// Temp6 = 79.2 OC
// x6 = [C1 C2 C3 C4 C5]
x6 = [0.00204 0.0187 0.1045 0.4247 0.4500];
xlk_By_xhk6 = x6(3)/x6(5);
// From Eqn. 9.176:
// Tray 6 is the feed tray
Np1 = 6;

// Exhausting section:
// Assume Temp = 110 OC
L_bar = L+(q*F);// [kmol]
G_bar = L_bar-W;// [kmol]
// alpha57 = [C3 C4 C5 C6]
alpha110 = [5 2.2 1 0.501];
// From Eqn. 9.178:
xNp = zeros(4);
k = 1;
for i = 3:6
    xNp(k) = ((G_bar/L_bar)*yNpPlus1(i))+((W/L_bar)*xW(i));
    Val110(k) = alpha110(k)*xNp(k);
    k = k+1;
end
yNp = Val110/sum(Val110);
mC5 = 1/sum(Val110);
// yNp is in Eqb. with xNp:
xlk_By_xhkNp = xNp(1)/xNp(4);
// Results for Np-7 to Np-9 trays:
// For Np-7
// Temp =  95.7 OC
// xNpMinus7 = [C3 C4 C5 C6]
xNpMinus7 = [0.0790 0.3944 0.3850 0.1366];
xlk_By_xhkNpMinus7 = xNpMinus7(1)/xNpMinus7(3);
// For Np-8
// Temp =  94.1 OC
// xNpMinus8 = [C3 C4 C5 C6]
xNpMinus8 = [0.0915 0.3897 0.3826 0.1362];
xlk_By_xhkNpMinus8 = xNpMinus8(1)/xNpMinus8(3);
// For Np-9
// Temp =  93.6 OC
// xNpMinus9 = [C3 C4 C5 C6]
xNpMinus9 = [0.1032 0.3812 0.3801 0.1355];
xlk_By_xhkNpMinus9 = xNpMinus9(1)/xNpMinus9(3);
// From Eqn. 9.176:
// Np-8 is the feed tray.
deff('[y] = g2(Np)','y = Np-8-Np1');
Np = fsolve(7,g2);
printf("Number of theoretical Trays required for R = 0.8: %d\n",Np);
printf("\n");

//**************Composition Correction*****************//
// Page: 446
printf('Page: 446\n\n');

// New Bubble Point:
// Temp = 86.4 OC
x6_new = x6*(1-xNpMinus8(4));
x6_new(6) = xNpMinus8(4);
// alpha86 = [C1 C2 C3 C4 C5 C6]
alpha86 = [46.5 13.5 5.87 2.39 1.00 0.467];
// From Eqn. 9.181:
xhkn = x5(5);
xhknPlus1 = x6_new(5);
xC65 = alpha86(6)*x6_new(6)*xhkn/xhknPlus1;
x5_new = x5*(1-xC65);
x5_new(6) = 1-sum(x5_new);
// Tray 5 has a bubble point of 80 OC
// Similarly , the calculations are continued upward:
// x2_new = [C1 C2 C3 C4 C5 C6]
x2_new = [0.0021 0.0214 0.1418 0.6786 0.1553 0.00262];
// y2_new = [C1 C2 C3 C4 C5 C6]
y2_new = [0.0444 0.111 0.2885 0.5099 0.0458 0.00034];
// x1_new = [C1 C2 C3 C4 C5 C6]
x1_new = [0.00226 0.0241 0.1697 0.7100 0.0932 0.00079];
// y1_new = [C1 C2 C3 C4 C5 C6]
y1_new = [0.0451 0.1209 0.3259 0.4840 0.0239 0.000090];
// x0_new = [C1 C2 C3 C4 C5 C6]
x0_new = [0.00425 0.0425 0.2495 0.6611 0.0425 0.00015];
// yD_new = [C1 C2 C3 C4 C5 C6]
yD_new = [0.0789 0.1842 0.3870 0.3420 0.0079 0.00001];
// From Eqn. 9.184:
// For C1 & C2
alphalkm = alpha86(3);
xlkmPlus1 = xNpMinus7(1);
xlkm = x6_new(3);
xC17 = x6_new(1)*alpha86(3)*xlkmPlus1/(alpha86(1)*xlkm);
xC27 = x6_new(2)*alpha86(3)*xlkmPlus1/(alpha86(2)*xlkm);
// Since xC17 = 1-xC27
// The adjusted value above constitute x7's.
// The new bubbl point is 94 OC
// The calculations are continued down in the same fashion.
// The new tray 6 has:
// xC1 = 0.000023 & xC2 = 0.00236
// It is clear that the conc. of these components are reducing so rapidly that there is no need to go an further.
printf("******Corrected Composition***********\n");
printf("Component\t \tx2\t \t \t y2\t \t \t x1\t \t \t y1\t \t \tx0\t \t \tyD\n");
for i = 1:6
    printf("C%d\t \t \t%f\t \t %f\t \t %f\t \t %f\t \t%f\t \t%f\n",i,x2_new(i),y2_new(i),x1_new(i),y1_new(i),x0_new(i),yD_new(i));
end
printf("\n");

//*************Heat Load of Condensor & Boiler & L/G ratio**********//
// Page 448
printf('Page: 448\n\n');

// Values of x0, yD & y1 are taken from the corrected concentration.
// HD46 = [C1 C2 C3 C4 C5 C6]
HD46 = [13490 23380 32100 42330 52570 61480];// [kJ/kmol]
for i = 1:6
    yDHD(i) = yD_new(i)*HD46(i);
end
HD = sum(yDHD);// [kJ]
// HL46 = [C1 C2 C3 C4 C5 C6]
HL46 = [10470 17210 18610 22790 27100 31050];// [kJ/kmol]
for i = 1:6
    xHL(i) = x0_new(i)*HL46(i);
end
HL0 = sum(xHL);// [kJ]
// HG58 = [C1 C2 C3 C4 C5 C6]
HG58 = [13960 24190 37260 43500 53900 63500];// [kJ/kmol]
for i = 1:6
    yHG1(i) = y1_new(i)*HG58(i);
end
HG1 = sum(yHG1);// [kJ]
// From Eqn. 9.54:
Qc = D*((R+1)*HG1-(R*HL0)-HD);// [kJ/kmol feed]
// Similarly:
HW = 39220;// [kJ]
HF = 34260;// [kJ]
// From Eqn. 9.55:
Qb = (D*HD)+(W*HW)+Qc-(F*HF);// [kJ/kmol feed]
// For tray n = 1
G1 = D*(R+1);// [kmol]
// With x1 & y2 from corrected composition;
// HG66 = [C1 C2 C3 C4 C5 C6]
HG66 = [14070 24610 33800 44100 54780 64430];// [kJ/kmol feed]
for i = 1:6
    yHG2(i) = y2_new(i)*HG66(i);
end
HG2 = sum(yHG2);// [kJ]
// HL58 = [C1 C2 C3 C4 C5 C6]
HL58 = [11610 17910 20470 24900 29500 33840];// [kJ/kmol feed]
for i = 1:6
    xHL1(i) = x1_new(i)*HL58(i);
end
HL1 = sum(xHL1);// [kJ]
// From Eqn. 9.185:
G2 = (Qc+D*(HD-HL1))/(HG2-HL1);// [kmol]
L2 = G2-D;// [kmol]
L2_By_G2 = L2/G2;
// Similarly, the calculations are made for other trays in enriching section.
// For tray, Np = 14:
// C1 & C2 are absent.
// HG113 = [C3 C4 C5 C6]
HG113 = [38260 49310 60240 71640];// [kJ/kmol feed]
k = 3;
for i = 1:4
    yHG15(i) = yNpPlus1(k)*HG113(i);
    k = k+1;
end
HG15 = sum(yHG15);
// HL107 = [C3 C4 C5 C6]
HL107 = [29310 31870 37680 43500];// [kJ/kmol feed]
for i = 1:4
    xHL14(i) = xNp(i)*HL107(i);
end
HL14 = sum(xHL14);// [kJ]
// Similarly:
HL13 = 36790;// [kJ]
HG14 = 52610;// [kJ]
// From Eqn. 9.186:
G15_bar = (Qb+(W*(HL14-HW)))/(HG15-HL14);// [kmol]
L14_bar = W+G15_bar;// [kmol]
G14_bar = (Qb+(W*(HL13-HW)))/(HG14-HL13);// [kmol]
L14_By_G14 = L14_bar/G14_bar;
printf("Condensor eat Load %f kJ:\n",HL0);
printf("Reboiler eat Load %f kJ:\n",HG15);
// For other Exhausting Section Trays:
// Result = [Tray No. L_By_G Temp(OC)]
// Tray 0: Condensor
// Tray 15: Reboiler
Result = [0,0.80 46.6;1 0.432 58.4;2 0.437 66;3 0.369 70.4;4 0.305 74;5 0.310 80.3;6 1.53 86.4;7 4.05 94.1;8 3.25 96.3;9 2.88 97.7;10 2.58 99;11 2.48 100;12 2.47 102.9;13 2.42 104.6;14 2.18 107.9;15 1.73 113.5];
printf("**************L/G*************\n")
printf("Tray No. \t\t L/G\t\t\t\t Temp(OC)\n");
for i = 1:16
    printf("%d\t \t \t%f\t \t \t%2.2f\n",Result(i,1),Result(i,2),Result(i,3));
end
// These values are not final.
// They scatter eratically because they are based on the temp. and conc. computed with the assumption of constant L/G
printf("\n");

//**************Thiele Geddes Method******************//
// Page:452
printf('Page: 452\n\n');

// Use the tray Temperature to obtain m.
// For C4:
// m = [0(Condensor) 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15(Reboiler)]
m = [0.50 0.66 0.75 0.81 0.86 0.95 1.07 1.22 1.27 1.29 1.30 1.32 1.40 1.45 1.51 1.65];
for i = 1:7
    A(i) = Result(i,2)/m(i);
end
for j = 1:9
    i = i+1;
    S(j) = 1/(Result(i,2)/m(i));
end
// f = Tray No. 6
f = 7;
// From Eqn. 9.196:
// Value1 = Gf*yf/(D*zD)
Sum = 0;
for i = 1:f-1
    Val = 1;
    for j = i:f-1
        Val = Val*A(j);
    end
    Sum = Sum+Val;
end
Value1 = 1+Sum;
// From Eqn. 9.206:
// Value2 = Lf_bar*xf/(W*xW);
Sum = 0;
for i = 9:-1:1
    Val = 1;
    for j = i:-1:1
        Val = Val*S(j);
    end
    Sum = Sum+Val;
end
Value2 = 1+Sum;
// From Eqn. 9.208:
// Value3 = W*xW/(D*zD)
Value3 = A(f)*Value1/Value2;
// From Eqn. 9.210:
DyD = F*zF(4)/(Value3+1);// [kmol,C4]
// From Eqn. 9.209:
WxW = (F*zF(4))-(DyD);// [kmol, C4]
// Similarly:
// For [C1; C2; C3; C4; C5; C6]
// Result2 = [Value1 Value2 Value3 DyD WxW]
Result2 = [1.0150 254*10^6 288*10^(-10) 0.03 0;1.0567 8750 298*10^(-5) 0.07 0;1.440 17.241 0.0376 0.1447 0.0053;1.5778 1.5306 1.475 0.1335 0.1965;15580 1.1595 45.7 0.00643 0.29357;1080 1.0687 7230 0.0000166 0.1198];
D = sum(Result2(:,4));// [kmol]
W = sum(Result2(:,5));// [kmol]
// In the Distillate:
DyD_C3 = Result2(3,4);// [kmol]
zFC3 = zF(3);// [kmol]
percentC3 = (DyD_C3/zFC3)*100;
DyD_C5 = Result2(5,4);// [kmol]
zFC5 = zF(5);// [kmol]
percentC5 = (DyD_C5/zFC5)*100;
// These do not quite meet the original speification.
// For Tray 2 & C4
// From Eqn. 9.195:
// Value4 = G2*y2/(D*zD)
n = 2;
Sum = 0;
for i = 1:n
    Val = 1;
    for j = i:n
        Val = Val*A(j);
    end
    Sum = Sum+Val;
end
Value4 = 1+Sum;
// From The enthalpy Balnce:
G2 = 0.675;
// From Eqn. 9.211:
y2 = Value4*DyD/G2;
// Similarly:
// Value4 = [C1 C2 C3 C4 C5 C6]
Value4 = [1.0235 1.1062 1.351 2.705 10.18 46.9];
for i = 1:6
    y2(i) = Result2(i,4)*Value4(i)/G2;
end
Y2 = sum(y2);
// Since Y2 is not equal to 1. THerefore the original temperature is incorrect. By adjusting y2 to unity.
// The dew point is 77 OC instead of 66 OC
// y2_adjusted = [C1 C2 C3 C4 C5 C6]
y2_adjusted = [0.0419 0.1059 0.2675 0.4939 0.0896 0.00106];
printf("*****************Composition By Thiele Geddes Method*****************\n");
printf("Component\t \t \t y2\n")
for i = 1:6
    printf("C%d\t \t \t \t%f\n",i,y2_adjusted(i));
end