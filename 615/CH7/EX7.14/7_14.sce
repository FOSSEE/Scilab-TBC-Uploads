//water chemistry//
//example 7.14//
W=50;//amount of NaCl in g/l in NaCl solution//
V=200;//volume of NaCl solution in litres//
A=W*V;
V=10000;//volume of hard water passed through Zeolite softener//
printf("The amount of NaCl used for %f litres of water is %fg",V,A);
M=100/(58.5*2);//multiplication factor of NaCl//
P=M*A;
printf("\nIn terms of CaCO3=%fgCaCO3",P);
B=P*1000/V;
printf("\nFor 1 litre of hard water=%fmg/l or ppm",B);