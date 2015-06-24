//                Case Study:-Chapter 6
//   4.Plotting of two Functions i.e. y1=exp(-ax) and y2=exp(-ax^2/2)

a=0.4;
printf("                      y------->                         \n");
printf("0 ---------------------------------------------------------------\n");
for x=0:0.25:4
    //Evaluation of functions
    y1=int32(50*exp(-a*x)+0.5);
    y2=int32(50*exp(-a*(x^2)/2)+0.5);
    //plotting when y1=y2
    if(y1==y2) ,
        if(x==2.5) ,
            printf("x |");
        else
            printf("  |");
        end
        for i=1:(y1-1)
            printf(" ");
        end
        printf("#\n");
        continue;
    end
   
    //Plotting when y1>y2
    if(y1>y2) ,
        if(x==2.5) ,
            printf("x |");
        else
            printf("  |");
        end
        for i=1:y2-1
            printf(" ");
        end
        printf("*");
        for i=1:(y1-y2-1)
            printf("-");
        end
        printf("0\n");
        continue;
     end 
     
     //Plotting when y2>y1
    if(y2>y1) ,
        if(x==2.5)
            printf("x |");
        else
            printf("  |");
        end
        for i=1:(y1-1)
            printf(" ");
        end
        printf("0");
        for i=1:(y2-y1-1)
            printf("-");
        end
        printf("*\n");
     end
end
     printf("  |\n");