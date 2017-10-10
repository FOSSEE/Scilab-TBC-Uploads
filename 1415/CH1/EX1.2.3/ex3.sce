//Example 3 Page no 60
clc
clear
//creating function
function q=f(p)
    q=77.8*p^(-0.11)
endfunction

disp('a)')
//plotting demand function
disp('the demand curve is as in the graph')
p=([200 400 500 800 1200 1600 2000 2200])
y=f(p)
plot(2400,50,p,y,'blue')//plotting graph

disp('b)')
//the demand at tuition costs of $1000 and $1500
disp('the demand at tuition costs of $1000 and $1500')
q=f(1000)//funcition calling
mprintf("\t%f thousand students\n",q)
q=f(1500)//funcition calling
mprintf("\t%f thousand students\n",q)
//the change in demand is therefore given as
disp('the change in demand is therefore given as')
change=(f(1500)-f(1000))//funcition calling
mprintf("\t%f thousand students\n",change)
xtitle('Technology formula','p','q');
