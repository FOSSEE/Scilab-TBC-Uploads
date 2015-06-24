//To find radii of stepped pulleys
clc
//Given:
N1=160, N3=N1, N5=N3, N2=60, N4=80, N6=100 //rpm
x=720, r1=40 //mm
//Solution:
//For a crossed belt:
//Calcluating the radii of pulleys 2, 3, 4, 5, and 6
r2=r1*(N1/N2) //mm
//For pulleys 3 and 4, r4 = r3*(N3/N4), or r3*(N3/N4)-r4 = 0
//For a crossed belt drive, r3+r4 = r1+r2
A=[N3/N4 -1; 1 1]
B=[0; r1+r2]
V=A \ B
r3=V(1) //mm
r4=V(2) //mm
//For pulleys 5 and 6, r6 = r5*(N5/N6), or r5*(N5/N6)-r6 = 0
//For a crossed belt drive, r5+r6 = r1+r2
A=[N5/N6 -1; 1 1]
B=[0; r1+r2]
V=A \ B
r5=V(1) //mm
r6=V(2) //mm
//Results:
printf("\n\n For a crossed belt,\n r2 = %.1fmm;\n",r2)
printf(" r3 = %.1f mm;\n",r3)
printf(" r4 = %.1f mm;\n",r4)
printf(" r5 = %.1f mm;\n",r5)
printf(" r6 = %.1f mm.\n\n",r6)
//For an open belt:
//Calcluating the radii of pulleys 2, 3, 4, 5, and 6
r2=r1*(N1/N2) //mm
//Calculating the length of belt for an open belt drive
L=%pi*(r1+r2)+(r2-r1)^2/x+2*x //mm
//For pulleys 3 and 4, r4 = r3*(N3/N4), or r3*(N3/N4)-r4 = 0
//Since L is constant, for pulleys 3 and 4, %pi*(r3+r4)+(r4-r3)^2/x+2*x-L = 0
funcprot(0)
function y=f(a)
    r3=a(1)
    r4=a(2)
    y(1)=r3*(N3/N4)-r4
    y(2)=%pi*(r3+r4)+(r4-r3)^2/x+2*x-L
endfunction
z=fsolve([1,1],f)
r3=z(1) //mm
r4=z(2) //mm
//For pulleys 5 and 6, r6 = r5*(N5/N6), or r5*(N5/N6)-r6 = 0
//Since L is constant, for pulleys 5 and 6, %pi*(r5+r6)+(r6-r5)^2/x+2*x-L = 0
function y=f(a)
    r5=a(1)
    r6=a(2)
    y(1)=r5*(N5/N6)-r6
    y(2)=%pi*(r5+r6)+(r6-r5)^2/x+2*x-L
endfunction
z=fsolve([1,1],f)
r5=z(1) //mm
r6=z(2) //mm
//Results:
printf(" For an open belt,\n r2 = %.1fmm,\n",r2)
printf(" r3 = %.1f mm;\n",r3)
printf(" r4 = %.1f mm;\n",r4)
printf(" r5 = %d mm;\n",r5)
printf(" r6 = %d mm.\n\n",r6)