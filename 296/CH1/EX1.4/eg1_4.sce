n = 10^16; // desired density of P atoms 
k = 0.35;
l = 5000; //initial load of Si in grams
w =31;//atomic weight of P
d = 2.33; //density of Si
i = n/k; //initial concentration of P in melt, assuming C(S)=kC(L)
V = l/d; //volume of Si
N = i*V; //number of P atoms
W = N*w/(6.02*10^23)
disp("4.a)")
disp(n,"desired density of P atoms (per cubic centimeter)=")
disp(i,"initial concentration of P in melt (in per cubic cm )=")
disp("4.b)")
disp(V,"Volume of Si (in cubic cm) =")
disp(N,"number of P atoms =")
disp(W,"weight of phosphorus to be added(in grams) =")