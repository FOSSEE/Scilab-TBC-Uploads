//          Case study:chapter 4
//         2.Reliability Graph

LAMBDA=0.001;
for i=1:27
    printf("--");
end
printf("\n");
for t=0:150:3000
    r=exp(-LAMBDA*t);
    R=int32(50*r+0.5);
    printf("|");
    for i=1:R
          printf("*");
    end
    printf("#\n");
end
for i=1:2
    printf("|\n");
end
