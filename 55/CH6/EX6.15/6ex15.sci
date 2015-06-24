p=12;  //total number of students
t=3;  //number of teams or partition
disp('each partition of the students can be arranged in 3! ways as an ordered partition')
r=factorial(12)/(factorial(4)*factorial(4)*factorial(4))  //number of ordered partitions
m=r/factorial(t);  //number of unordered partitions
disp(m,'number of ways that 12 students can be partitioned into three teams so that each team consists of 4 students')