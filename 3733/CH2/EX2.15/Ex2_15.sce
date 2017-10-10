// Example 2_15
clc;funcprot(0);
//Given data
w=[1 2 3 4 5 6 7 8 9 10 11 12];// Week
b=[6000 4000 5400 2000 1500 1000 1200 4500 8000 4000 3000 2000];// Weekly flow in m^3/sec

//Calculation
for(i=1:12)
    c(i)=b(i)*7;
end
Cv(1)=c(1);// day-sec-metres
Cv(2)=Cv(1)+c(2);// day-sec-metres
Cv(3)=Cv(2)+c(3);// day-sec-metres
Cv(4)=Cv(3)+c(4);// day-sec-metres
Cv(5)=Cv(4)+c(5);// day-sec-metres
Cv(6)=Cv(5)+c(6);// day-sec-metres
Cv(7)=Cv(6)+c(7);// day-sec-metres
Cv(8)=Cv(7)+c(8);// day-sec-metres
Cv(9)=Cv(8)+c(9);// day-sec-metres
Cv(10)=Cv(9)+c(10);// day-sec-metres
Cv(11)=Cv(10)+c(11);// day-sec-metres
Cv(12)=Cv(11)+c(12);// day-sec-metres
w=[0 1 2 3 4 5 6 7 8 9 10 11 12];// Week for plot
CV=[0 Cv(1) Cv(2) Cv(3) Cv(4) Cv(5) Cv(6) Cv(7) Cv(8) Cv(9) Cv(10) Cv(11) Cv(12)];// Cumulative volume in day-sec-metres for plot
ylabel('Flow in thousands & day-sec-meter');
plot(w,CV/1000)
// The total flow in the week,Q=7*day-sec-metres.
// From fig.prob.2.15
C=42*10^3;// The capacity of the reservoir in day-sec-metre
bc=5.7*20*10^3;// day-sec-metre
ac=5.5;// day
Q=bc/(ac*7);// Flow rate available in m^3/sec
printf('\n The capacity of the reservoir=%0.1e day-sec-metre \nFlow rate available=%0.0f m^3/sec',C,Q);
// The answer vary due to round off error
