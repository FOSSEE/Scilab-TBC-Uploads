

//example 4.61
//obtain ordinates 24 hr unit hydrograph
clc;funcprot(0);
//given
O=[0 5.5 13.5 26.5 45 82 162 240 231 165 112 79 57 42 31 22 14 9.5 6.6 4 2 1 0 0 0 0 0];  //ordinates of  1st 8 hrs unit hydrograph
for i=1:25
    o1(i+2)=O(i);                          //ordinates of  2nd 8 hrs unit hydrograph
    o2(i+4)=O(i);                          //ordinates of  3rd 8 hrs unit hydrograph
end
mprintf("ordinates 24 hr unit hydrograph:");
for i=1:27
    o3(i)=o1(i)+o2(i)+O(i);        //total 24 hr hydrograph of 3 cm run-off
    t(i)=o3(i)/3;
    t(i)=round(t(i)*10)/10;
    mprintf("\n%f",t(i));
end


