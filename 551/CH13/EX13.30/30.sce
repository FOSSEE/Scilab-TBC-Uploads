clc
v=10:1:100;
function p=f(v)
    p=1/v^1.4;
endfunction
plot(v,f)

v=[10 20]
p=[f(10) f(10)]
plot(v,p,'r')

v=20:1:100;
function p=fa(v)
    p=2.6515/v^1.4;
endfunction
plot(v,fa,'g')

v=[100 100]
p=[f(100) fa(100)]
plot(v,p,'--p')

v=[15 15]
p=[f(15) 0.040]
plot(v,p,'--')

v=[20 20]
p=[f(20) 0.040]
plot(v,p,'--r')

xtitle("p-v diagram", "v", "p")
legend("1-2b","2b-3", "3-4", "4-1", "2a-3a", "2-3")

//The air-standard Otto, Dual and Diesel cycles are drawn on common p-v and T-s diagrams for the same maximum pressure and maximum temperature, for the purpose of comparison.
// Otto 1-2-3-4-1
// Dual 1-2a-3a-3-4-1
// Diesel 1-2b-3-4-1


xset('window', 1)

s=10:1:50;
function T=fb(s)
    T=s^2
endfunction
plot(s,fb)

s=10:1:50;
function T=fc(s)
    T=(s+30)^2
endfunction
plot(s,fc,'r')

s=[12 12];
T=[fb(12) fc(12)];
plot(s,T,'--p')

s=[45 45];
T=[fb(45) fc(45)]
plot(s,T,'m')

s=10:1:27;
T=5*(s)^2;
plot(s,T,'g')

s=10:1:20;
T=7*s^2;
plot(s,T,'--r')

xtitle("T-s diagram", "s", "T")
legend("1-4", "2b-3", "1-2b", "3-4", "2-3", "2a-3a")

// The construction of cycles on T-s diagram proves that for the given conditions the heat rejected is same for all the three cycles (area under process line 4-1).
// η=1-(Heat rejected)/(Heat supplied)=1-constant/Qs

// The cycle with greater heat addition will be more efficient.
// From the T-s diagram

// Qs(diesel) = Area under 2b-3
// Qs(dual) = Area under 2a-3a-3
// Qs(otto) = Area under 2-3.

// Qs(diesel) > Qs(dual) > Qs(otto)

disp("Thus, ηdiesel > ηdual > ηotto")