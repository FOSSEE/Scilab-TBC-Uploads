L=20/1000

/////////////////////////////
disp("Part1")
function i = i(t)
    i = 8*exp(-100*t);
endfunction

t=10/1000
v= L*(derivative(i,t))
disp(v,"V=")

/////////////////////////////Part2
disp("Part2")
t=0.1

function v=v(t)
    v=6*exp(-12*t)
endfunction

i0=8

i2=1/L*intg(0,t,v)+i0
disp(i2)

////////////////////////////Part3
disp("Part3")
function i3 = i3(t)
    i3 = 10-10*exp(-50*t);
endfunction

t=40/1000
v3=L*(derivative(i3,t))
P40=v3*i3(t)
disp(P40)

t=50/1000
P50=1/2*L*(i3(50)^2)
disp(P50)