//Chapter-4, Example 4.5, Page 133
//=============================================================================
clc
clear
funcprot(0)
//CALCULATIONS
Im=100;//current in amps
f=50;//freq in hz
w=2*%pi*50;//angular freq in rad/sec
//at t=0.0025
function f=myfun(t)
  f=Im*sin(w*t(1));
endfunction
t=[0.0025];
g=numdiff(myfun,t)//by using numdiff function the calculated value will defer to observed value by 15
//at t= 0.005
function f1=myfun(t1)
  f1=Im*sin(w*t1(1));
endfunction
t1=[0.005];
g1=numdiff(myfun,t1);
//at t= 0.01
function f2=myfun(t2);
  f2=Im*sin(w*t2(1));
endfunction
t2=[0.01];
g2=numdiff(myfun,t2);
mprintf("rate of change of current at t=0.025,t=0.005,t=0.01 sec are %d A/sec %d A/sec %d A/sec respectively",g,g1,g2);
//=================================END OF PROGRAM==============================
