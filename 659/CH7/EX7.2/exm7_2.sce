//                    Example:7.2
//Given below is the list of marks obtained by a class of 50 students in an 
//annual examination. 43 65 51 27 79 11 56 61 82 09 25 36 07 49 55 63 74 81 49 
//37 40 49 16 75 87 91 33 24 58 78 65 56 76 67 45 54 36 63 12 21 73 49 51 19 39 
//49 68 93 85 59
//Write a program to count the number of students belonging to each of
// following groups of marks:0-9,10-19,20-29,.......100.

//This program computes for 10 students. We could compute for 50 students by
//changing MAXVAL=50.

MAXVAL=10;COUNTER=11;
disp("Input Data[Marks of 10 students]");
group1=zeros(1,11);
//Reading and counting
for i=1:MAXVAL
    //Reading of values
    value(i)=input(" ");
    //Counting frequency of groups
    a=int16((value(i)/10));
    if(a==0) then
      group1(a+1)=group1(a+1)+1;
     else
      group1(a+1)=group1(a+1)+1;
    end
  
end
//Printing of frequency table
printf("Group       Range     Frequency\n");
for i=0:COUNTER-1
    if(i==0) ,
        low=0;
    else
        low=i*10;
    end
    if(i==10),
        high=100;
     else
          high=low+9;
    end
    printf("%2d %8d to %3d %5d\n",i+1,low,high,group1(i+1));
end
