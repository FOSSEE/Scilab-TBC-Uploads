//example2.14
clc
disp("For load 1, N1=800 rpm,   I1=(I_a1)=20A")
disp("For load 2,   I2=(I_a2)=50 A,  R_a=0.2 ohm,   R_se=0.3 ohm")
disp("From voltage equation V=(E_b1)+[(I_a1)*(R_a)]+[(I_se1)*(R_se)]")
disp("but   I1=(I_a1)=(I_se1)=20 A")
disp("Therefore,    250=(E_b1)+20(0.2+0.3)")
b=250-10
disp(b,"Therefore,    E_b1(in V)=")
disp("and,  V=(E_b2)+[(I_a2)*R_a]+[(I_se2)+(R_se)]")
disp("Therefore,    250=(E_b2)+50(0.2+0.3)")
b=250-25
disp(b,"E_b2(in V)=")
disp("From the speed equation,")
disp("N is directly proportional to (E_b)/psi")
disp("Now,  psi proportional to (I_se) and (I_a)")
disp("Therefore,    N1/N2=[(E_b1)*(psi_2)]/[(E_b2)*(psi_1)]")
disp("Therefore,    N1/N2=[(E_b1)*(I_a2]/[(E_b2)*(I_a1)]")
n=(800*225*20)/(240*50)
disp(n,"Therefore,    N2(in rpm)=[(N1)*(E_b2)*(I_a1)]/[(E_b1)*(I_a2)]=")
