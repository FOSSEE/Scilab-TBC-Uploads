

//example 4.46
//draw storm hyetograph and intensity duration curve
clc;funcprot(0);
//given
p=[0 5 7.5 8.5 9];      //accumulated precipitation
t=[0 30 60 90 120];     //time
r(1)=0;
mprintf("Rainfall intensity:");
for i=2:5
    r(i)=p(i)-p(i-1);          //rainfall in succesive 30 min interval
    I(i)=r(i)*60/30;           //rainfall intensity
    mprintf("\n%f",I(i));
end
//graph is plotted between I and t.
 
