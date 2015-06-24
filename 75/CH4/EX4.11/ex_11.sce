        //    PG (234)

deff('[y]=f(x)','y=exp(x)')
x = -1:0.01:1;
//    For 
n = 1;
x = [-1 0 1];
E1 = 0.272;
F1 = 1.2715 + 1.1752*x;

//    Relative errors

x = -1.0;
exp(x) - F1;
r1 = ans(1,1)
x = 0.1614;
exp(x) - F1;
r2 = ans(1,2)
x = 1.0;
exp(x) - F1;
r3 = ans(1,3)

F3 = 0.994526 + 0.995682*x + 0.543981*x*x + 0.179519*x*x*x;
x = [-1.0 -0.6832 0.0493 0.7324 1.0]
exp(x) - F3    //    relative errors