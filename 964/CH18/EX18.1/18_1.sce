//clc()
//f1(x) = f0(x) +(f(x1) - f(x0) *(x - x0)/ (x1 - x0)
x = 2;
x0 = 1;
x1 = 6;
m = 1.791759;
n = 0;
r = log(2);
f = 0 + (m - n) * (x - x0) / (x1 - x0);
disp(f,"value of ln2 for interpolation region 1 to 6 =")
e = (r - f) * 100/r;
disp("%",e,"error by interpolation for interval[1,6] =")
x2 = 4;
p = 1.386294;
f = 0 + (p - n) * (x - x0) / (x2 - x0);
disp(f,"value of ln2 for interpolation region 1 to 6 =")
e = (r - f) * 100/r;
disp("%",e,"error by interpolation for interval[1,6] =")
