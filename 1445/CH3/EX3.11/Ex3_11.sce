//CHAPTER 3- THREE-PHASE A.C. CIRCUITS
//Example 11

disp("CHAPTER 3");
disp("EXAMPLE 11");

//SOLUTION
function power_sum=p1(phi);
power_sum=20*cos(phi);                 //power_sum=p1+p2=20*cos(phi) and in KiloWatts
endfunction;
function power_diff=p2(phi);
power_diff=(20*sin(phi))/sqrt(3);      //power_diff=p1-p2=(20*sin(phi))/sqrt(3) and in KiloWatts
endfunction;

//solution (a): when phi=0
power_sum=20*cos(0);                   //eq(i)
power_diff=(20*sin(0))/sqrt(3);        //eq(ii)
//solving eq(i) and eq(ii) to get values of p1 and p2
A=[1 1;1 -1];
b=[power_sum;power_diff];
x=inv(A)*b; 
x1=x(1,:);                             //to access the 1st row of 2X1 matrix 
x2=x(2,:);                             //to access the 2nd row of 2X1 matrix 
disp("Solution (a)"); 
disp(sprintf("P1 + P2 = %d kW",power_sum));
disp(sprintf("P1 - P2 = %d kW",power_diff));
disp(sprintf("The two wattmeter readings are %d kW and %d kW",x1,x2));

//solution (b): when phi=30 or %pi/6 (lagging)
power_sum=20*cos(%pi/6);
power_diff=(20*sin(%pi/6))/sqrt(3);
A=[1 1;1 -1];
b=[power_sum;power_diff];
x=inv(A)*b; 
x1=x(1,:);
x2=x(2,:);
disp("Solution (b)");
disp(sprintf("P1 + P2 = %.2f kW",power_sum));
disp(sprintf("P1 - P2 = %.2f kW",power_diff));
disp(sprintf("The two wattmeter readings are %.2f kW and %.2f kW",x1,x2));

//solution (c): when phi=60 or %pi/3
power_sum=20*cos(%pi/3);
power_diff=(20*sin(-(%pi/3)))/sqrt(3); //leading
A=[1 1;1 -1];
b=[power_sum;power_diff];
x=inv(A)*b; 
x1=x(1,:);
x2=x(2,:);
disp("Solution (c)");
disp(sprintf("P1 + P2 = %.2f kW",power_sum));
disp(sprintf("P1 - P2 = %.2f kW",power_diff));
disp(sprintf("The two wattmeter readings are %.2f kW and %.2f kW",x1,x2));

//solution (d): when phi=90 or %pi/2
power_sum=20*cos(%pi/2);
power_diff=(20*sin(%pi/2))/sqrt(3);   //leading
A=[1 1;1 -1];
b=[power_sum;power_diff];
x=inv(A)*b; 
x1=x(1,:);
x2=x(2,:);
disp("Solution (d)");
disp(sprintf("P1 + P2 = %.2f kW",power_sum));
disp(sprintf("P1 - P2 = %.2f kW",power_diff));
disp(sprintf("The two wattmeter readings are %.2f kW and %.2f kW",x1,x2));

//END
