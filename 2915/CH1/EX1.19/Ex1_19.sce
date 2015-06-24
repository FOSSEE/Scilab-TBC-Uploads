clc,clear
//Example 1.19
//To solve the right triangle with given information

//part(a)
c=10 ;//side opposite to vertex C
A=22 ;//Angle at vertex A
a=c*sind(A);
b=c*cosd(A) ;
B=90 - A ;//since C is 90, A and B are complimentary
printf('(a)a= %.2f units ; b= %.2f  units; B = %.0f degree\n',a,b,B)

//part(b)
b=8 ;//side opposite to vertex B
A=40 ;//Angle at vertex A
a=b*tand(A);
c=b/cosd(A) ;
B=90 - A ;//since C is 90, A and B are complimentary
printf(' (b)a= %.2f units ; c= %.2f units; B = %.0f degree\n',a,c,B)

//part(c)
a=3 ;//side opposite to vertex A
b=4 ;//side opposite to vertex B
c=sqrt(a^2+b^2) ;//by pythagoras theorem
A = atand(a/b) ;//angle at vertex A
B=90 - A ;//since C is 90, A and B are complimentary
printf(' (c)c=%.0f units     ; A= %f degree;  B = %f degree',c,A,B)
