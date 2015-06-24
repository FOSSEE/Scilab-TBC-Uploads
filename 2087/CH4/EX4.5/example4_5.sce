

//example 4.5
//calculate average rainfall using
//arithmatic average method
//isohytel method
//thiesson polygon method
clc;funcprot(0);
//given
p=[58 61 69 56 84 86 69 79 71];   //values of precipitation
s=0;
for i=1:9
    s=s+p(i);
end
ar=s/9;
ar=round(ar*10)/10;
mprintf("using arithmatic average method:")
mprintf("\nAverage rainfall=%f cm.",ar);

I=[86 85 80 75 70 65 60 55 50];          //isphytes
A=[0.43 5.20 4.0 5.04 5.85 4.53 4.09 1.27];  //area between isohytes
for i=1:8
    a(i)=(I(i)+I(i+1))/2;
end
for i=1:8
    P(i)=A(i)*a(i);
end
s=0;
for i=1:8
    s=s+P(i);
end
t=0;
for i=1:8
    t=t+A(i);
end
ar=s/t;
ar=round(ar*10)/10;
mprintf("\n\nisohytel method:")
mprintf("\nAverage rainfall=%f cm.",ar);

A=[3.26 0.39 1.61 2.04 2.46 0.84 3.91 5.09 0.41 3.94 2.06 4.40];   //thiessen area
p=[58 63 71 69 86 81 84 56 53 69 61 79];           //observed precipitation
for i=1:12
    P(i)=A(i)*p(i);
end
s=0;
for i=1:12
    s=s+P(i);
end
disp(s);
t=0;
for i=1:12
    t=t+A(i);
end
ar=s/t;
ar=round(ar*10)/10;
mprintf("\n\nthiesson polygon method:")
mprintf("\nAverage rainfall=%f cm.",ar);
//mean rainfall obtained by thiesson polygon method is different from book as product(A*P) is round offed in book.
