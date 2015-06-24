//                  Case Study:-Chapter 6
//                      2.Histogram

N=5;
for n=1:N
    printf("Enter employees in Group-%d:",n);
    value(n)=scanf("%d");          //Read data in the array named value
    printf("%d\n",value(n));       //Print number which is at position n
end
printf("\n");
printf("        |\n");
//Computation using for loop and draw a histogram
for n=1:N
    for i=1:3
         if(i==2) then
                printf("Group-%1d |",n);
          else
                printf("        |");
          end
          for j=1:value(n)
                printf("*");
          end
          if(i==2)
                printf("(%d)\n",value(n));
           else
                printf("\n");
           end
     end
                printf("        |\n");
end