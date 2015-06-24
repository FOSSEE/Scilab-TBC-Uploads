clear all; clc;

disp("Pick the data rows for the flow rates of 10241 and 13965 cfm and list them in the first four columns of the table below.")
disp("Convert the flow rate Q,static pressure SP and brake horsepower BHP values for various rpm into 300rpm based on the fan laws.")
disp("That is Q1=Q*(300/N), SP1=SP((300/N)^2),BHP1=BHP*((300/N)^3)")
disp("Calculate the static efficiency using ETAs=(Q*SP)/(6346*BHP)")
disp("The results are plotted into the chart")





Q=[10241 10241 10241 10241 10241 10241 10241 13965 13965 13965 13965 13965 13965 13965 13965 ];
SP= [0.25 0.375 0.5 0.625 0.75 1 1.25 0.25 0.375 0.5 0.625 0.75 1 1.25 1.5];
N= [300 321 341 363 385 427 466 380 396 413 428 444 473 506 537];
BHP= [0.82 1.03 1.23 1.45 1.68 2.19 2.75 1.58 1.86 2.16 2.43 2.72 3.3 3.89 4.51];

Q1= zeros(1,length(Q));
SP1 = zeros(1,length(Q));
BHP1 = zeros(1,length(Q));
ETA=zeros(1,length(Q));

for i = 1: length(Q)
   
   Q1(i)=Q(i)*(300/N(i))
   SP1(i)=SP(i)*((300/N(i))^2)
   BHP1(i)=BHP(i)*((300/N(i))^3)
   ETA(i)=(Q(i)*SP(i))/(6346*BHP(i))
    
end

//disp("    phi     psi      eff(%)   pai        N(rpm)      Ps(mw)       Q(m^3/s)")

table = [Q' SP' N' BHP' Q1' SP1' BHP1' ETA'];
disp("     Q       SP        N        BHP        Q1          SP1          BHP1         ETA")
disp("   (cfm)   (in.wg)    rpm                 (cfm)      (in.wg)")
disp(table)

plot(Q1,SP1,'o',Q1,BHP1,'d',Q1,ETA,'s')
legend("SP1(in.wg)","BHP1(hp)","ETA",-1)
xlabel("Q(cfm)")
ylabel("SP1(in.wg), BHP1(hp) , ETA")
set(gca(),"grid",[1 1])



























