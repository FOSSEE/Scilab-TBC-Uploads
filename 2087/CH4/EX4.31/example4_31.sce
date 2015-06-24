

//example 4.31
//calculate ordinate of 9 hr unit hydrograph
clc;funcprot(0);
//given
t=[0:3:45];     //time
O=[0 9 20 35 49 43 35 28 22 17 12 9 6 3 0 0];           //ordinate of 2 hr unit hydrograph
of(1)=0;
of(2)=0;
for i=3:16
    of(i)=O(i-2)+of(i-2);                 //offset ordinate
end 
for i=1:16
   s(i)=O(i)+of(i);                       //ordinate of s-curve
end   
of1(3)=0; 
for i=4:16
    of1(i)=s(i-3);                        //offset of s-curve
end
mprintf("ordinates of 9 hrs unit hydrograph:");
for i=1:16
    y(i)=s(i)-of1(i);
    u(i)=2*y(i)/3;                            //ordinate of 9 hrs unit hydrograph
    u(i)=round(u(i)*10)/10;
    mprintf("\n%f",u(i));
end

