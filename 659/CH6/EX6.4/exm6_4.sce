//                      Example 6.4
//A class of n students take an annual examination in m subjects.
// A program to read the marks obtained by each student in various subjects
// and to compare and print the total marks obtained by each of them.

FIRST=360;SECOND=240;
disp("Enter number of students and subjects");
[n,m]=scanf("%d %d");
for i=1:n
    roll_number=input("Enter roll_number:");
    total=0;
    printf("Enter marks of %d subjects for ROLL NO %d",m,roll_number);
    printf("[Enter each in newline]");
    for j=1:m
        marks=scanf("%d");
        total=total+marks;    //Compute the total
    end
    //print the total marks
    printf("TOTAL MARKS =%d",total);
    //Test  for division and display it
    if(total>=FIRST) ,
        disp("First Division");
    elseif(total>=SECOND)
        disp("Second Division");
    else
        disp("***F A I L ***")
    end
end