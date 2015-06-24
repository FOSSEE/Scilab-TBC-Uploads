            //Example 4.12
    clc
//ix, iy= short integers
//lx, ly= long integers
//dx, dy= double

printf("\nShort, ix= ");
ix=int8(scanf("%hd"));
disp(ix,"ix = ");

printf("\nlong, lx= ");
lx=int32(scanf("%D"));
disp(lx,"lx = ")

printf("\ndouble, dx= ");
dx=scanf("%f");
disp(dx, "dx = ");

printf("\nShort-octal , iy= ");
iy=int8(scanf("%3ho"));
disp(iy, "Its equiv decimal,  iy = ");

printf("\nlong-hex, ly= ");
ly=int32(scanf("%7x"));
disp(ly, "Its equiv. decimal , ly = ");

printf("\ndouble, dy= ");
dy=scanf("%15e");
disp(dy, "dy = ");
