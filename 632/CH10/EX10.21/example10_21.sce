//clc()
N = 1;//mol ( basis - combined feed )
//F - moles of fresh feed
Pinert = 0.5;//%
Pconv = 60;//%
P1inert = 2;//%
NA1 = N * ( 1- P1inert/100 );
NA2 = NA1 * ( 1 - Pconv / 100 );
NB2 = NA1 - NA2;
N1inert = N * P1inert / 100;
N2inert = N1inert;
//Let R be the moles recycled and P be the moles purged
//W = R + P
W = NA2 + N2inert;//                                (A)
PWinert = N2inert * 100/ ( NA2 + N2inert);
//component A balance, A fresh feed = A purge stream + A recycle stream
//F * 0.9 = P * 0.9515 + 0.588                      (B)
//inert balance at the point where fresh feed is mixed with the recycle,
//F*0.005 + R*0.0485 = 1* 0.02                      (C)
//Solving (A),(B) and (C)
F = 0.6552;//mol
P = 0.0671;//mol
R = 0.3448;//mol
disp("mol",R,"(a)moles of recycle stream = ")
disp("mol",P,"(b)moles of purge stream = ")
NAconv = NA1 - NA2;
NAf = F * (1 - Pinert / 100);
Conv = NAconv *100/ NAf;
disp("%",Conv,"(c)Overall conversion = ")