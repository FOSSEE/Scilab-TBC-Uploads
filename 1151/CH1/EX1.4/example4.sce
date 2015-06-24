//find transfer function of lag network
printf("syms R1 R2 C\n ei=(R1+R2+(1/C)*s);\n eo=(R2+(1/C)*s);\n G=eo/ei;\n transfer function Eo(s)/Ei(s)is:G")
