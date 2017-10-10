//Example 2 Page 47
clc
clear
//defnining the function
function y=n(t)
if(t>0 | t<=3) then
y=1.5*t^2-t+1.5;
elseif(t>3 | t<=5) then
y=46*t-126;
end
endfunction

disp('jan.2005:')
t=1;
y=n(t)//calling function
mprintf("the facebook memberships in the year 2005 are %d",y);//prinitng the value of the year 2005
disp('jan.2007:')
t=3;
y=n(t)//calling function
mprintf("the facebook memberships in the year 2007 are %d",y);//prinitng the value of the year 2007
disp('jan.2008:')
t=4.5;
y=n(t)//calling function
mprintf("the facebook memberships in the year 2005 are %d",y);//prinitng the value of the year 2008
t=[0 1 2 3 ]//assigning values to t
y=n(t)//finding the values of the function n(t)
plot(t,y,'blue')//plotting on the graph
t=([3 3.5 4 4.5 5])
y=n(t)
plot(t,y,'red')//plotting on the graph
xtitle('Graph of n','Year','facebook members (in millions)');
