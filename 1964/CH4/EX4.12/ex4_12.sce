//Chapter-4, Example 4.12, Page 138
//=============================================================================
clc
clear
//CALCULATIONS
Im=141.4;//instantaneous current
f=50;//freq in hz
w=2*%pi*f;//angular freq in rad/sec
//instantaneous current equation is i=141.4*sin(w*t);
function f=myfun(t)
  f=Im*sin(w*t(1));
endfunction
t=[0.0025];
g=numdiff(myfun,t)
mprintf("rate of change of current is %d A/sec \n",g);
function f1=myfun(t1)
  f1=Im*sin(w*t1(1));
endfunction
t1=[0.005];
g1=numdiff(myfun,t1)
mprintf("rate of change of current is %d A/sec \n",g1);
function f2=myfun(t2)
  f2=Im*sin(w*t2(1));
endfunction
t2=[0.01];
g2=numdiff(myfun,t2)
mprintf("rate of change of current is %d A/sec \n",g2);
//note:answer given in textbook for section c is wrong
//=================================END OF PROGRAM==============================
