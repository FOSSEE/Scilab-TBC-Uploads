//                    Example 8.5
//Write a program using for loop to print the following output:
//   C
//   CP
//   ....
//   ....
//   CProgrammimg
//   CProgrammimg
//   ....
//   ....
//   CPr
//   CP
//   C
string1='CProgramming';
printf(" -------------\n");
f=' ';
for i=1:12
    f=f+part(string1,i);
    
    printf("|%-13s|\n",f);
end
printf("|-------------|\n");
for j=0:11
    s=' ';
    for i=1:12-j
        s=s+part(string1,i);
     end
     printf("|%-13s|\n",s);
end
printf(" -------------");
//for c=0:11
//    d=c+1;
//    mprintf("|%-12.*s|\n",d,string1);
//end
//disp("---------------------");
//for c=11:c-1:0
//    d=c+1;
//    printf("|%-12.*s|\n",d,string1);
//end
//disp("----------------------");