//                 Example 4.4
// The program illustrates the various options for reading 
//integers are experimented in this program


printf("Enter three integer numbers\n");
[n,a,b,c]=mscanf("%d %*d %d");
disp(c,b,a);
printf("Enter two 4-digit numbers\n");
[n,x,y]=mscanf("%2d %4d");
printf('%d %d\n',x,y);

printf("Enter two integers\n");
[n,a,x]=mscanf("%d %d");
printf('%d %d\n',a,x);

printf("Enter a nine digit number\n");
[n,p,q,r]=mscanf("%3d %4d %3d");
printf('%d %d %d\n',p,q,r);

printf("Enter two three digit numbers\n");
[n,x,y]=mscanf("%d %d");
printf('%d %d \n',x,y);

