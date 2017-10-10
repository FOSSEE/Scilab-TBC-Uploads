//Example 4 Page 62
clc
clear
function q1=f(p1)
    q1=77.8*(p1^(-0.11))
endfunction

function q2=g(p2)
    q2=30.4+0.006*p2
endfunction
disp('a)')
p1=([200 400 800 1200 1600 2000 2200])
q1=f(p1)
plot(2400,50,p1,q1,'blue')

p2=([200 400 800 1200 1600 2000 2200])
q2=g(p2)
plot(2400,50,p2,q2,'red')

disp('the lines cross at $1000 at Equilibrium point')
disp(f(1000),'Demand:')
disp(g(1000),'Supply:')
disp('so 36400 students')

disp('b)')
disp('If tuition is, say, $1,800, then the supply will be larger thandemand and there will be a surplus of available openings at private schools. Similarly, iftuition is less—say $400—then the supply will be less than the demand, and there willbe a shortage of available openings.')

disp('c)')
//tuition fee set at &1200
disp(f(1200),'Demand in thousand seats')
disp(g(1200),'Supply in thousand seats')
disp(g(1200)-f(1200),'Surplus is given in thousand seats as:')
xtitle('Demand and Supply','p','q');
