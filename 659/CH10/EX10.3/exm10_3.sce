//                    Example 10.3
// Write a program to calculate the subject-wise and student-wise totals
//and store them as a part of the structue.

//Defining array of structures
student=[struct('sub1',45,'sub2',67,'sub3',81,'total',0)
         struct('sub1',75,'sub2',53,'sub3',69,'total',0)
         struct('sub1',57,'sub2',36,'sub3',71,'total',0)
         ];
total=struct('sub1',0,'sub2',0,'sub3',0,'total',0);

//Calculate the student-wise and subject-wise totals
for i=1:3
    student(i).total=student(i).sub1+student(i).sub2+student(i).sub3;
    total.sub1=total.sub1+student(i).sub1;
    total.sub2=total.sub2+student(i).sub2;
    total.sub3=total.sub3+student(i).sub3;
    total.total=total.total+student(i).total;
end
//Printing student-wise totals
printf("STUDENT         TOTAL\n");
for i=1:3
    printf("student(%d)        %d\n",i,student(i).total);
end
//Printing subject-wise totals
printf("SUBJECT         TOTAL\n");
printf(" %s        %d\n","Subject 1",total.sub1);
printf(" %s        %d\n","Subject 2",total.sub2);
printf(" %s        %d\n","Subject 3",total.sub3);
//Printing grand total
printf("Grand Total = %d",total.total);