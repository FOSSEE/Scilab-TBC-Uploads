//Example 6.24. refer fig.6.23(a).
clc
format(6)
disp("(i) DC load line:")
disp("Refer fig.6.23(a), we have VCC = VCE + IC*(RC+RE)")
disp("To draw the d.c. load line,we need two end points, viz. maximum VCE point(at IC = 0) and maximum IC point(at VCE = 0)")
disp("Maximum VCE = VCC = 12V, which locates the point B(OB = 12V) of the d.c. load line")
IC=12/(2*10^3)  //in Ampere
x1=IC*10^3  //in mA
disp(x1,"Maximum  IC(mA) = VCC / (RC+RE) =")
disp("This locates the point A(OA = 6mA) of the d.c. load line. Fig.6.23(b) shows the d.c. load line AB, with (12V,6mA)")
disp("")
disp("(ii) Operating point Q")
disp("The voltage across  R2 is V2 = (R2/R1+R2)*VCC")
V2=((4*10^3)/(12*10^3))*12  //in V
disp(V2,"Therefore,    V2(V) =")
disp("       V2 = VBE + IE*RE")
IE=(4-0.7)/(1*10^3)  //in Ampere
x2=IE*10^3  //in mA
disp(x2,"Therefore,  IE(mA) = V2-VBE / RE =")
IC=x2 //in mA
disp(IC,"        IC(mA) = IE(mA) = ")
VCE=12-((3.3*10^-3)*(2*10^3)) //in volts
disp(VCE,"VCE(V) = VCC - IC(RC+RE) =")
disp("Therefore, the operating point Q is at 5.4V and 3.3mA, which is shown on the d.c. load line")
disp("")
disp("(iii) AC load line")
disp("To draw the a.c. load line, we need two end points, viz. maximum VCE and maximum IC when signal is applied")
Rac=1.5/2.5 //in k-ohm
disp(Rac,"AC load,   Ra.c.(k-ohm) = RC || RL =")
VCE=5.4+((3.3*10^-3)*(0.6*10^3)) //in Volts
disp(VCE,"Therefore, maximum VCE(V) = VCEQ + ICQ*Ra.c. =")
disp("This locates the point C(OC = 6.24V) on the VCE axis")
IC=(3.3*10^-3)+(5.4/(0.6*10^3))  //in Ampere
x3=IC*10^3  //in mA
disp(x3,"Maximum  IC(mA) = ICQ + VCEQ/Ra.c. =")
disp("This locates the point D(OD = 12.3mA) on the IC axis. By joining points C and D a.c. load line CD is constructed. ")
x=[7.38,0]
y=[0,12.3]
plot2d(x,y,style=2)
x1=[12,0]
y1=[0,6]
plot2d(x1,y1,style=1)
legend("a.c. load line CD","d.c. load line AB")
title("Fig.6.23(b)")
xlabel("VCE(V) -->")
ylabel("IC(mA) -->")