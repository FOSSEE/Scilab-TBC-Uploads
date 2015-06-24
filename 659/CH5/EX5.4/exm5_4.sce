//                     Example 5.4
// The program selects and prints the largest of the three numbers 
//using nested if...else statement

disp("Enter three values");
A=input("A=");
B=input("B=");
C=input("C=");
disp("Largest value is:");
if(A>B) ,               //Test for largest between A&B
    if(A>C) ,           //Test for largest between A&C
        disp(A);
     else
         disp(C);
     end
else
    if(C>B) ,          //Test for largest between C&B
        disp(C);
    else
        disp(B);
     end
end
