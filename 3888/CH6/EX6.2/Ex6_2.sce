//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 6.2
//Scilab Version : 6.0.0    ; OS : Windows



clc;
clear;
clf;



q=[500 500 350 200 300 800 1100 900 400 200 0];
t=0:1:10;
subplot(3,1,1);
title("Hydrograph");
xlabel("Time (Weeks)");
ylabel("Q (m3/Sec)");
plot2d2(t,q);
Avg=sum(q)/max(t);                  //Average Discharge in a Week in m^3/sec
percent=[0 1100];
j=1;
for temp=1100:-200:100
    count=0;
    for i=1:1:11
        if q(i) >= temp then
           count=count+1; 
       else
           count=count+0;    
        end
    end
    j=j+1;
    percent(j,:)=[count*10 temp];
end
subplot(3,1,2);
title("Flow duration curve");
xlabel("Percentage of time");
ylabel("Q (m3/Sec)");
plot2d(percent(:,1),percent(:,2));   
y=cumsum(7*q);
subplot(3,1,3);
title("Mass curve");
xlabel("Time (Weeks)");
ylabel("Cumulative flow(day-sec-metre)");
plot2d([1:1:10],resize_matrix(y,-1,10),rect=[0 0 11 40000]);


printf("\nAverage weekly discharge is %.f m^3/sec",Avg);



