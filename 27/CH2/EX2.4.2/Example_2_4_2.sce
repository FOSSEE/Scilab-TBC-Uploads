//Example 2.4.2 Page 25
//Non-Linear Dynamics and Chaos, First Indian Edition Print 2007
//Steven H. Strogatz

clear;
clc;
close;
set(gca(),"auto_clear","off")        //hold on

//f(N) = N(dot) = r*N(1-N/K)
// Let r = 5 and K = 1600; to plot N(dot) v/s N

for N = 0:8:1600
    f = 5*N*(1-(N/1500));
    plot2d(N,f,style=-2)
end
set(gca(),"grid",[2,5])
xtitle("Logistic Map","x-Axis(N)","y-Axis (N(dot))")

disp("From graph of N(dot) v/s N it is obvious that :-")
disp("N = 0 and N=K (1500 in our case) are fixed points.")
disp("And N=0 is Unstable Fixed Point and N=K is Stable Fixed Point.")

disp("When N(double dot) < 0 then =>  Fixed Point is Stable.")
disp("When N(double dot) > 0 then =>  Fixed Point is Unstable.")

//End of Example 2.4.2