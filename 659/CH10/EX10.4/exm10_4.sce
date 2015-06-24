//                    Example 10.4
//Rewrite the  program of Example 10.3 to using an array member to represent
//the three subjects.

//Defining array of structures and array with in structure
student(1)=[struct('sub',[45 67 81],'total',0)];
student(2)=[struct('sub',[75 53 69],'total',0)];
student(3)=[struct('sub',[57 36 71],'total',0)];
total=student;
for i=1:3
    total.sub(i)=0;
end
total.total=0;
//Calculate the student-wise and subject-wise totals
for i=1:3
    for j=1:3
        student(i).total=student(i).total+student(i).sub(j);
        total.sub(j)=total.sub(j)+student(i).sub(j);
    end
    total.total=total.total+student(i).total;  //Grand  total
end
//Printing student-wise totals
printf("STUDENT         TOTAL\n");
for i=1:3
    printf("student(%d)        %d\n",i,student(i).total);
end
//Printing subject-wise totals
printf("SUBJECT         TOTAL\n");
for j=1:3
    printf("subject-(%d)        %d\n",j,total.sub(j));
end
//Printing grand total
printf("Grand Total = %d",total.total);