//Example 6.23.refer fig.6.22(a)
clc
format(6)
disp("(i) DC load line:")
disp("Refer fig.6.22(a), we have VCC = VCE + IC*RC")
disp("To draw the d.c. load line,we need two end points, viz. maximum VCE point(at IC = 0) and maximum IC point(at VCE = 0)")
disp("Maximum VCE = VCC = 24V")
IC=24/(8*10^3)  //in Ampere
x1=IC*10^3  //in mA
disp(x1,"Maximum  IC(mA) = VCC / RC =")
disp("Therefore, the d.c. load line AB is drawn with the point B(OB = 24V) on the VCE axis and the point A(OA = 3mA) on the IC axis, as shown in fig.6.22(b)")
disp("")
disp("(ii) For fixing the optimum operating point Q, mark the middle of the d.c. load line AB and the corresponding VCE and IC values can be found")
VCEQ=24/2
disp(VCEQ,"Here,    VCEQ(V) = VCC / 2 =") //in volts
disp("         ICQ = 1.5 mA")
disp("")
disp("(iii) AC load line")
disp("To draw the a.c. load line, we need two end points, viz. maximum VCE and maximum IC when signal is applied")
Rac=(8*24)/(8+24) //in k-ohm
disp(Rac,"AC load,   R_a.c.(k-ohm) = RC || RL =")
VCE=12+((1.5*10^-3)*(6*10^3)) //in Volts
disp(VCE,"Therefore, maximum VCE(V) = VCEQ + ICQ*R_a.c. =")
disp("This locates the point D(OD = 21V) on the VCE axis")
IC=(1.5*10^-3)+(12/(6*10^3))  //in Ampere
x3=IC*10^3  //in mA
disp(x3,"Maximum  IC(mA) = ICQ + VCEQ/R_a.c. =")
disp("This locates the point C(OC = 3.5mA) on the IC axis. By joining points C and D a.c. load line CD is constructed. ")
x=[24,0]
y=[0,3]
plot2d(x,y,style=2)
x1=[21,0]
y1=[0,3.5]
plot2d(x1,y1,style=1)
legend("d.c. load line AB","a.c. load line CD")
title("Fig.6.22(b)")
xlabel("VCE(V)")
ylabel("IC(mA)")