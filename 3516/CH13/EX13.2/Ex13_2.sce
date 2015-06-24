printf("\t example 13.2 \n");
printf("\t approximate values are mentioned in the book \n");
printf("\t bubble point at 95F and 14.7psia \n");
x(1)=0.077; // mole fraction of C4
x(2)=0.613; // mole fraction of C5
x(3)=0.310; // mole fraction of C6
K(1)=3.13; // fig 7
K(2)=0.92; // fig 7
K(3)=0.3; // fig 7
a(1)=3.4; // a= alpha
a(2)=1; 
a(3)=0.326;
i=1;
while(i<4)
    Z(i)=(a(i)*x(i)); 
    i=i+1;
end
Zt=Z(1)+Z(2)+Z(3);
printf("\t Zt is : %.3f \n",Zt);
i=1;
while(i<4)
    y(i)=(a(i)*x(i)/(Zt));
    printf(" \n x(i)      K(i)      a(i)     Z(i)      y(i) \n "+string(x(i))+"      "+string(K(i))+"      "+string(a(i))+"     "+string(Z(i))+"      "+string(y(i))+" \n");
    i=i+1;
end
yt=y(1)+y(2)+y(3);
printf("\t yt is : %.3f \n",yt);
K2=(y(2)/x(2));
printf("\t K2 is : %.3f \n",K2);
printf("\t bubble point is 102 \n"); // from fig 7 , comparing K2 value
printf("\t dew point at 130F and 14.7psia \n");
y(1)=0.077; // mole fraction of C4
y(2)=0.613; // mole fraction of C5
y(3)=0.310; // mole fraction of C6
K(1)=5; // fig 7
K(2)=1.65; // fig 7
K(3)=0.62; // fig 7
a(1)=3.03; // a= alpha
a(2)=1; 
a(3)=0.376;
i=1;
while(i<4)
    Z(i)=(y(i)/a(i));
    i=i+1;
end
Zt=Z(1)+Z(2)+Z(3);
printf("\t Zt is : %.3f \n",Zt);
i=1;
while(i<4)
    x(i)=(Z(i)/Zt);
    printf(" \n y(i)      K(i)      a(i)     Z(i)      x(i) \n "+string(y(i))+"      "+string(K(i))+"      "+string(a(i))+"     "+string(Z(i))+"      "+string(x(i))+" \n");
    i=i+1;
end
xt=x(1)+x(2)+x(3);
printf("\t xt is : %.0f \n",xt);
K2=(y(2)/x(2));
printf("\t K2 is : %.2f \n",K2);
printf("\t dew point is 122F \n"); // from fig 7, comparing K2 value
// end
