clear;
clc;
printf("\nExample 2.3\n");
// comparision of 2 strings.
a="hakunah";..........//string 1.
b="matata";.............//string 2.
disp(" a & b respectively are =");
disp(a);
disp(b);
disp("comparing strings");
z=strcmp(a,b);.........//comparision of 2 strings.
if(z==0)
    printf("\nMATCHED\n");.......// if strings matched strcmp returns 0.
else
    printf("\nNOT MATCHED\n");.........// if string doesn't matched strcmp returns -1.
    end
     q="akash";
     w="akash";
     disp("q & w respectively are=");
     disp(q);
     disp(w);
     disp("comparing strings");
     x=strcmp(q,w);
     if(x==0)
    printf("\nMATCHED\n");.......// if strings matched strcmp returns 0.
else
    printf("\nNOT MATCHED\n");.........// if string doesn't matched strcmp returns -1.
    end