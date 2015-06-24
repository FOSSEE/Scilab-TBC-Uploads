//Transport Processes and Seperation Process Principles
//Chapter 9
//Example 9.7-1
//Drying of Process Materials
//given data
X=(1/1000)*[195 150 100 65 50 40]
R=0.01*[151 121 90 71 37 27]
Rinv=[]
for i=1:6
    Rinv(i)=1/R(1,i);
    
end
v=inttrap(X,Rinv)

X1=0.38;
X2=0.195;
XC=X2;
Rc=1.51;
A=18.58;
Ls=399;
t1=(Ls/A)*(-v);//as the graph is a decreasing function
t=(X1-X2)*(Ls/(A*Rc))
plot(X,Rinv,rec=[0,0,0.3,5])
xtitle("Graphical Representation of Falling Rate Period","X","1/R")
mprintf("the time for drying= %f h",t+t1)
