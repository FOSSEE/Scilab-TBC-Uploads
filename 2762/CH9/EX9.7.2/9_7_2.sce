//Transport Processes and Seperation Process Principles
//Chapter 9
//Example 9.7-2
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
XC=0.195;
X2=0.040;
Rc=1.51;
A=18.58;
Ls=399;
t=(Ls*XC/(A*Rc))*(log(XC/X2)/log(%e));
mprintf("Drying time= %f h",t)
