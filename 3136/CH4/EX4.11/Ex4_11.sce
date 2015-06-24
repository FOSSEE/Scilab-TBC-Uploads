clear all; clc;

disp("With H=k*(Q^2)+3,the constant k can be obtained.")

H=10*144/62.4
printf("We have H= %0.2f ft and Q=25gpm",H)

Q_1=25
k=(H-3)/(Q_1^2)
printf("\nThus k= %0.4f ft/(gpm^2)",k)

disp("Thus the H/Q relationship can be tabulated and plotted as follows")

Q=[0 5 10 15 20 25 30];
Hdash = zeros(1,length(Q));

for i = 1: length(Q)
   

   Hdash(i)=(0.0321*((Q(i))^2)+3);
end

table = [Q' Hdash'];
disp("  Q(gpm)  H(ft)")
disp(table)

plot(Q,Hdash)

xlabel("Q (gpm)")
ylabel("H(ft)")

disp("(b) Rewrite H=0.0321*(Q^2)+3 into Q=5.581*((H-3)^0.5)")
disp("From Qc=2Q and Hc=H,we have Qc=11.16*(Hc-3)^0.5 or Qc^2=124.6*(Hc-3)")
disp("Or Hc=0.00802*Qc^2+3")
disp("It is the expression of the combined system")
