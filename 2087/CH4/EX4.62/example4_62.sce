//example 4.62
//ordinates of 1 hr unit hydrograph
clc;funcprot(0);
//given
t=[0:1:12];     //time
O=[0 0 54 0 175 0 127 0 58 0 25 0 0 0];           //ordinate of 2 hr unit hydrograph
of(1)=0;
of(2)=0;
for i=3:13
    if modulo(i,2)==0;
        of(i)=0;
    
else 
    of(i)=O(i-2)+of(i-2);
end
end
s=[0 25 54 120 229 300 356 390 414 430 439 439 439];     //Ordinates of S-curve
for i=2:13
    of1(i)=s(i-1);
end
mprintf("ordinates of 1 hr unit hydrograph:");
for i=1:13
    y(i)=s(i)-of1(i);
u(i)=y(i)*2;
mprintf("\n%i",u(i));
end
//graph is plotted between u and t

