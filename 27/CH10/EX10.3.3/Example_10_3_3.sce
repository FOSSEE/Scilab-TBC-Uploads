//Example 10.3.2 Page 358
//Non-Linear Dynamics and Chaos, First Indian Edition Print 2007
//Steven H. Strogatz
clear;
clear;
clc;
close;
set(gca(),"auto_clear","off")        //hold on

r=0:0.1:5;
size1=length(r);
x=zeros(601,size1);
x(1,1:size1)=0.1;
for r1=1:size1
    for n=1:600
        x(n+1,r1)=r(r1)*x(n,r1)*(1-x(n,r1));
    end
end

//z=zeros(301,size1);
for r1=1:size1
    for n=300:600
        //z(n-299,r1)=x(n+1,r1);
        plot2d(r(r1),x(n+1),style=-2)
    end
end

// End of Example