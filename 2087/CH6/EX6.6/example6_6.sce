

//example 6.6
//calculate the allocations to each project purpose
clc;funcprot(0);
//given
t=240;            //total cost of project(million rupees)
s=[32 88 72];     //separable cost
eb=[40 138 112];   //estimated benifit
sp=[47 104 101];   //alternate single purpose cost
//using remaining benifit method
ts=s(1)+s(2)+s(3); //total separable cost
tj=t-ts;           //total joint cost
w=0;
for i=1:3
    if eb(i)<sp(i) then
        b(i)=eb(i);            //benifit limited by alternate cost
    else
        b(i)=sp(i);
    end
   rb(i)=b(i)-s(i);            //remaining benifit
   w=w+rb(i);  
  
end
y=0;
for i=1:3
     aj(i)=tj*rb(i)/w;         //allocated joint cost
     ta(i)=s(i)+aj(i);         //total allocations
     y=y+ta(i);
end
mprintf("Using remaining benifit method.");
mprintf("\n\nallocations to each project purpose(percent):");
for i=1:3
    per(i)=ta(i)*100/y;            //total allocation percent
    mprintf("\n%f",per(i));
end


//using alternate justifiable method
w=0;
for i=1:3
    ac(i)=sp(i)-s(i);           //alternate cost less separable cost
    w=w+ac(i);      
    
end
y=0;
for i=1:3
    ajc(i)=tj*ac(i)/w;         //allocated joint cost
    ta(i)=s(i)+ajc(i);         //total allocation
   y=y+ta(i);
end
mprintf("\n\nUsing alternate justifiable expenditure method method.");
mprintf("\n\nallocations to each project purpose(percent):");
for i=1:3
    pr(i)=ta(i)*100/y;         //total allocation percent
mprintf("\n%f",pr(i));
end



