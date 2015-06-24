            //Example 4.11
    clc
//ix, iy= short integers
//lx, ly= long integers
//dx, dy= double

printf("\nShort, ix= ");
ix=int8(scanf("%hd"));
disp(ix,"ix = ");

printf("\nlong, lx= ");
lx=int32(scanf("%ld"));
disp(lx,"lx = ")

printf("\ndouble, dx= ");
dx=scanf("%lf");
disp(dx, "dx = ");

//octal in scilab is written without preceeding o as in C
printf("\nShort-octal , iy= ");
iy=int8(scanf("%3ho"));
disp(iy, "Its equiv decimal,  iy = ");

//hexadecimal in scilab is written without preceeding ox as in C
printf("\nlong-hex, ly= ");
ly=int32(scanf("%7lx"));
disp(ly, "Its equiv. decimal , ly = ");

printf("\ndouble, dy= ");
dy=scanf("%15le");
disp(dy, "dy = ");
