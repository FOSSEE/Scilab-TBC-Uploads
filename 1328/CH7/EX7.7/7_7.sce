printf("\t example 7.7 \n");
printf("\t approximate values are mentioned in the book \n");
U=50; // Btu/(hr)*(ft^2)*(F)
TP=328; // F
TE=228; // F
CP=(0.30/(888.8*1000));
CE=(0.05/(960*1000));
CF=1.20;
theta=8000; // annual hours
X=((CF*(TP-TE))/((CP-CE)*U*theta)); // from eq 7.53
printf("\t X is : %.9f \n",X);
a=(1); // coefficient of t^2
b=(-556); // coefficient of t
c=(74784-X); // constant
printf("\t coefficient of t^2 is : %.2f \n",a);
printf("\t coefficient of t is : %.2f \n",b);
printf("\t constant term is : %.9f \n",c);
P=poly([c b a], 't','c');
t=roots(P);
printf("\t t is :%.0f \n",t);
printf("\t t cannot be greater than 328F \n \t t is 218F \n");
//end
