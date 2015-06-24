//          Case Study:-Chapter 3,Page No:77
//        2.Solution of the Quadratic equation


printf("Input values of a, b, and c \n");
a=input("a =");
b=input("b =");
c=input("c =");
discriminant = b^2-4*a*c;
if(discriminant<0)
    printf("\n\nROOTS ARE IMAGINARY\n");
else
    //Computes root1 and root2
    root1 = (-b + sqrt(discriminant))/(2.0*a);
    root2 = (-b - sqrt(discriminant))/(2.0*a);
    printf("\n\nRoot1 = %5.2f\n\nRoot2 = %5.2f\n",root1,root2 );
end


