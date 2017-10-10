printf("\t example 13.1 \n");
// at atmospheric pressure,Pt=760 mm Hg
printf("\t approximate values are mentioned in the book \n");
x(1)=0.077; // mole fraction of C4
x(2)=0.613; // mole fraction of C5
x(3)=0.310; // mole fraction of C6
printf("\t for T 100 F \n");
Pp(1)=3170; // vapour pressure of C4, from fig 13.3
Pp(2)=790; // vapour pressure of C5,from fig 13.3
Pp(3)=250; // vapour pressure of C6,from fig 13.3
i=1;
while(i<4)
    p(i)=(Pp(i)*x(i));
    printf(" \n x(i)      Pp(i)      p(i) \n "+string(x(i))+"      "+string(Pp(i))+"      "+string(p(i))+" \n");
i=i+1;
end
pt=p(1)+p(2)+p(3);
printf("\t total pressure is : %.1f mm Hg \n",pt);
printf("\t pressure is too high \n");
printf("\t for T 96 F \n");
Pp(1)=2990; // vapour pressure of C4, from fig 13.3
Pp(2)=725; // vapour pressure of C5,from fig 13.3
Pp(3)=229; // vapour pressure of C6,from fig 13.3
i=1;
while(i<4)
    p(i)=(Pp(i)*x(i));
    printf(" \n x(i)      Pp(i)      p(i) \n "+string(x(i))+"      "+string(Pp(i))+"      "+string(p(i))+" \n");
i=i+1;
end
pt=p(1)+p(2)+p(3);
printf("\t total pressure is : %.1f mm Hg \n",pt);
printf("\t pressure is too low \n");
printf("\t for T 97 F \n");
Pp(1)=3040; // vapour pressure of C4, from fig 13.3
Pp(2)=740; // vapour pressure of C5,from fig 13.3
Pp(3)=234; // vapour pressure of C6,from fig 13.3
i=1;
while(i<4)
    p(i)=(Pp(i)*x(i));
    printf(" \n x(i)      Pp(i)      p(i) \n "+string(x(i))+"      "+string(Pp(i))+"      "+string(p(i))+" \n");
i=i+1;
end
pt=p(1)+p(2)+p(3);
printf("\t total pressure is : %.1f mm Hg \n",pt);
i=1;
while(i<4)
    y(i)=(Pp(i)*x(i)/pt);
    printf("\n x(i)      y(i) \n "+string(x(i))+"      "+string(y(i))+" \n");
    i=i+1;
end
printf("\t solution for b \n");
// Similarly at what temperature will the mixture start to boil if the system is under a pressure of 35 psia
printf("\t for T 150 F \n");
Pp(1)=6100; // vapour pressure of C4, from fig 13.3
Pp(2)=1880; // vapour pressure of C5,from fig 13.3
Pp(3)=680; // vapour pressure of C6,from fig 13.3
i=1;
while(i<4)
    p(i)=(Pp(i)*x(i));
    printf(" \n x(i)      Pp(i)      p(i) \n "+string(x(i))+"      "+string(Pp(i))+"      "+string(p(i))+" \n");
i=i+1;
end
pt=p(1)+p(2)+p(3);
printf("\t total pressure is : %.0f mm Hg \n",pt);
printf("\t pressure is too high \n");
printf("\t for T 149F \n");
Pp(1)=6050; // vapour pressure of C4, from fig 13.3
Pp(2)=1850; // vapour pressure of C5,from fig 13.3
Pp(3)=670; // vapour pressure of C6,from fig 13.3
i=1;
while(i<4)
    p(i)=(Pp(i)*x(i));
    printf(" \n x(i)      Pp(i)      p(i) \n "+string(x(i))+"      "+string(Pp(i))+"      "+string(p(i))+" \n");
i=i+1;
end
pt=p(1)+p(2)+p(3);
printf("\t total pressure is : %.0f mm Hg \n",pt);
i=1;
while(i<4)
    y(i)=(Pp(i)*x(i)/pt);
    printf("\n x(i)      y(i) \n "+string(x(i))+"      "+string(y(i))+" \n");
    i=i+1;
end
printf("\t solution for c \n");
printf("\t for T 95F \n");
K(1)=3.13; // fig 7
K(2)=0.92; // fig 7
K(3)=0.30; // fig 7
i=1;
while(i<4)
    y(i)=(K(i)*x(i));
    printf("\n x(i)      K(i)      y(i) \n "+string(x(i))+"      "+string(K(i))+"      "+string(y(i))+" \n");
    i=i+1;
end
yt=y(1)+y(2)+y(3);
printf("\t yt is : %.3f \n",yt);
printf("\t yt is too low \n");
printf("\t for T 100F \n");
K(1)=3.35; // fig 7
K(2)=1; // fig 7
K(3)=0.335; // fig 7
i=1;
while(i<4)
    y(i)=(K(i)*x(i));
    printf("\n x(i)      K(i)      y(i) \n "+string(x(i))+"      "+string(K(i))+"      "+string(y(i))+" \n");
    i=i+1;
end
yt=y(1)+y(2)+y(3);
printf("\t yt is : %.3f \n",yt);
printf("\t yt is too low \n");
printf("\t for T 102F \n");
K(1)=3.45; // fig 7
K(2)=1.02; // fig 7
K(3)=0.35; // fig 7
i=1;
while(i<4)
    y(i)=(K(i)*x(i));
    printf("\n x(i)      K(i)      y(i) \n "+string(x(i))+"      "+string(K(i))+"      "+string(y(i))+" \n");
    i=i+1;
end
yt=y(1)+y(2)+y(3);
printf("\t yt is : %.3f \n",yt);
printf("\t solution for d \n");
// The use of K values gives y, directly and permits use of the total mol fraction of yt = 1.00 as the criterion for equilibrium
printf("\t for T 150F \n");
K(1)=2.8; // fig 7
K(2)=1.01; // fig 7
K(3)=0.4; // fig 7
i=1;
while(i<4)
    y(i)=(K(i)*x(i));
    printf("\n x(i)      K(i)      y(i) \n "+string(x(i))+"      "+string(K(i))+"      "+string(y(i))+" \n");
    i=i+1;
end
yt=y(1)+y(2)+y(3);
printf("\t yt is : %.3f \n",yt);
printf("\t yt is too low \n");
printf("\t for T 153F \n");
K(1)=2.90; // fig 7
K(2)=1.06; // fig 7
K(3)=0.415; // fig 7
i=1;
while(i<4)
    y(i)=(K(i)*x(i));
    printf("\n x(i)      K(i)      y(i) \n "+string(x(i))+"      "+string(K(i))+"      "+string(y(i))+" \n");
    i=i+1;
end
yt=y(1)+y(2)+y(3);
printf("\t yt is : %.3f \n",yt);
printf("\t solution for e at pt=760mm Hg \n");
y(1)=0.077; // mole fraction of C4
y(2)=0.613; // mole fraction of C5
y(3)=0.310; // mole fraction of C6
printf("\t for T 130F \n");
K(1)=5; // fig 7
K(2)=1.65; // fig 7
K(3)=0.62; // fig 7
i=1;
while(i<4)
    x(i)=(y(i)/K(i));
    printf("\n y(i)      K(i)      x(i) \n "+string(y(i))+"      "+string(K(i))+"      "+string(x(i))+" \n");
    i=i+1;
end
xt=x(1)+x(2)+x(3);
printf("\t xt is : %.3f \n",xt);
printf("\t xt is too low \n");
printf("\t for T 120F \n");
K(1)=4.4; // fig 7
K(2)=1.4; // fig 7
K(3)=0.51; // fig 7
i=1;
while(i<4)
    x(i)=(y(i)/K(i));
    printf("\n y(i)      K(i)      x(i) \n "+string(y(i))+"      "+string(K(i))+"      "+string(x(i))+" \n");
    i=i+1;
end
xt=x(1)+x(2)+x(3);
printf("\t xt is : %.3f \n",xt);
printf("\t xt is high \n");
printf("\t for T 123F \n");
K(1)=4.6; // fig 7
K(2)=1.49; // fig 7
K(3)=0.545; // fig 7
i=1;
while(i<4)
    x(i)=(y(i)/K(i));
    printf("\n y(i)      K(i)      x(i) \n "+string(y(i))+"      "+string(K(i))+"      "+string(x(i))+" \n");
    i=i+1;
end
xt=x(1)+x(2)+x(3);
printf("\t xt is : %.3f \n",xt);
printf("\t dew point at 760mm is 123F \n");
printf("\t dew point at 35psia \n");
printf("\t for T 174F \n");
K(1)=3.7; // fig 7
K(2)=1.38; // fig 7
K(3)=0.58; // fig 7
i=1;
while(i<4)
    x(i)=(y(i)/K(i));
    printf("\n y(i)      K(i)      x(i) \n "+string(y(i))+"      "+string(K(i))+"      "+string(x(i))+" \n");
    i=i+1;
end
xt=x(1)+x(2)+x(3);
printf("\t xt is : %.3f \n",xt);
printf("\t dew point is 174F \n");
// end
