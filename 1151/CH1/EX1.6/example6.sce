//determine the transfer function of the transformer coupled network
printf("syms R1 R2 C2 C1 L1 L2 M L3 \n G=s^3*R2*C1*C2*M/(((s^2*C2*(L3+L2))+1+s*R2*C2)*(S^2*L1*C1+s*C1*R1+1)-M^2*s^4*C1*C2)\n Transfer function=G")
