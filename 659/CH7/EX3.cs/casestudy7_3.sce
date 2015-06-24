//             Case Study: Chapter-7
//              3.Evaluating a Test

STUDENTS=3;
ITEMS=5;
//Reading of correct answers
printf("Input key to the items\n");
for i=1:ITEMS
    key(i)=read(%io(1),1,1,'(a)'); //Read data using read function
    // key(i)=scanf("%c"); It can be used to read data
end
//Evaluation begins

for student=1:STUDENTS
    //Reading students responses and counting correct ones
    count=0;
    printf("\nInput responses of student-%d",student);
    for i=1:ITEMS
        response(i)=scanf("%c");
    end
    correct=zeros(1,ITEMS)
//Commented code can be used to replace above line i.e. correct=zeros(1,ITEMS)
    //for i=1:ITEMS
    //    correct(i)=0;
    //end
    for i=1:ITEMS
        if(response(i)==key(i)) then
            count=count+1;
            correct(i)=1;
        end
    end
    //Printing of results
    printf("Student-%d\n",student);
    printf("Score is %d out of %d\n",count,ITEMS);
    printf("Response to the items below are wrong\n");
    n=0;
    for i=1:ITEMS
        if(correct(i)==0)
            printf("  %d",i);
            n=n+1;
        end
    end
    if(n==0) then
        printf("NIL\n");
    end
end