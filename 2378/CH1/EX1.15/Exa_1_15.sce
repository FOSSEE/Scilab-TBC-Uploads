// Exa_1_15
// Graphical representation of beats
A = 1;
w = 20;
delta = 1;
for i = 1: 1001        //making t and x matrix for various points
    t(i) = 15 * (i-1)/1000;
    x(i) = 2 * A * cos(delta*t(i)/2) * cos((w + delta/2)*t(i));
end
plot(t,x);        //plotting
xlabel('t');
ylabel('x(t)');
title('Phenomenon of beats');
