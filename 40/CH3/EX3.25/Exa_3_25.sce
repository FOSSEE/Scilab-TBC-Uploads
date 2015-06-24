//concepts based on stability and Causality
function[]=stability(X)
if (abs(roots(X))<1)
    disp("given system is stable")
else 
    disp("given system is not stable")
end
endfunction
x=[1 -1/6 -1/6];
z=%z;
n=length(x)-1:-1:0;
//characteristic eqn is
X=x*(z)^n'
stability(X)
x=[1 -1];
n=length(x)-1:-1:0;
//characteristic eqn is
X=x*(z)^n'
stability(X)
x=[1 -2 1];
n=length(x)-1:-1:0;
//characteristic eqn is
X=x*(z)^n'
stability(X)
