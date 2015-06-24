//water chemistry//
//example 7.8//
N=150;//amount of NaCl in solution in g/l//
V=8;//volume of NaCl solution//
M=N*V;
printf("The amount of NaCl in 8 lit of solution is %fgms",M);
V=10000;//volume of hard water//
W=58.5;//molecular weight of NaCl//
K=(M*100/(W*2))/V;
printf("\nfor 1 litre hardness is %fg/l",K);
J=K*1000;
printf("\nHardness of water is %fmg/l or ppm",J);
