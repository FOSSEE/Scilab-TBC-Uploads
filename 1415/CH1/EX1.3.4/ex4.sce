//Example 4 Page 83
clear
clc

disp('a)')
q2=350//assigning the q2 value
q1=400//assigning the q1 value
p2=0.75//assigning the p2 value
p1=0.50//assigning the p1 value
m1=((q2-q1)/(p2-p1));//finding the slope value
disp(m1,'the slope m is')//displaying the slope value
b1=q1-m1*p1//finding the intercept value
disp(b1,'the intercept value b')//displaying the intercept value
mprintf("so the demand equation is q=%dp+%d",m1,b1);//displaying the demand function

q2=500//assigning the q2 value
q1=300//assigning the q1 value
p2=0.75//assigning the p2 value
p1=0.50//assigning the p1 value
m2=((q2-q1)/(p2-p1));//finding the slope value
disp(m2,'the slope m is')//displaying the slope value
b2=q1-m2*p1;//finding the intercept value
disp(b2,'the intercept value b')//displaying the intercept value
mprintf("so the supply equation is q=%dp%d",m2,b2);//displaying the supply curve

disp('b)')
disp('In deamnd equation the slope m = -200, since m is negative, we see that the number of cans sold decreases as the price increases')
disp('In supplyequation the slope m = 800, since we conclued that the weekly supply increases by 800 cans per $1 increase')

disp('c)')
p=600/1000;//finding the p value
disp(p,'the p value is(dollars):')//displaying the p value
q=m1*p+b1;//fincind the q value
disp('the corresponding demand is:")//displaying the q value
mprintf(" %d cans per week",q)//printing the q value


