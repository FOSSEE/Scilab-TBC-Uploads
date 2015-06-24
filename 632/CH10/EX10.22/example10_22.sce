//clc()
N = 100;//moles ( Basis - Fresh feed )
Pconv = 20;//%
xco = 0.33;
xh2 = 0.665;
xch4 = 0.005;
//R - recycle stream, P - purge stream
//x - mole fraction of CO in recycle stream , 
xch4r = 0.03;
//CO = x, H2 = 1 - xch4r - CO = 0.97- x;
//methane balance over the entire system, 
P = xch4 * N / xch4r;
//taking caron balance, 33.5 = M + P ( 0.03 + x )
//Hydrogen balance, 66.5 + 2*0.5 = 2M + P(2*0.03 + 0.97 - x) 
//substituting P, M + 16.67x = 33.0 and 2M - 16.67x = 50.33
M = (33.0 + 50.33)/3;
x = ((xco + xch4)*N - M ) / P - xch4r;
//methanol balance,(xco*N+Rx) * Poncv/100 = M
R = (M*100 / Pconv - (xco*N))/x;
disp("mol",R,"(a)moles of recycle stream = ")
disp("mol",P,"(b)moles of purge stream = ")
H2 = 1 - xch4r - x;
disp("%",xch4r*100,"(c)CH4 in purge stream = ")
disp("%",x*100,"CO in purge stream = ")
disp("%",H2*100,"hydrogen in purge stream = ")
disp("mol",M,"(d)Methanol produced = ")