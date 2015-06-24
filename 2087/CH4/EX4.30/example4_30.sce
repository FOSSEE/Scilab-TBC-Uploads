

//example 4.30
//derive ordinates of 6 hrs unit hydrograph
clc;funcprot(0);
//given
R=[0 1 2.7 5 8 9.8 9 7.5 6.3 5 4 2.9 2.1 1.3 0.5 0 0 0 0 0];  //2hrs unit hydrograph
mprintf("ordinates of 6 hrs unit hydrograph");
for i=1:18
    O1(i+2)=R(i);
    
                                  
end
for i=1:16
    O2(i+4)=R(i);
end                               //offset unit hydrograph
for i=1:20
    S(i)=O1(i)+O2(i)+R(i);        //sum
    f(i)=S(i)/3;                  //ordinates of 6 hrs unit hydrograph
    f(i)=round(f(i)*10)/10;
    mprintf("\n%f",f(i));
end


