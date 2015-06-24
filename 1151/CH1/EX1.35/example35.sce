//determine transfer function using bloack diagram reduction techniques
printf("syms H1 H2 G\n l1=H1/G;\n l2=1+l1;//parallel blocks\nl3=G/(1+G*H2);\nl4=l3*l2;\nC(s)/R(s)=l3");
