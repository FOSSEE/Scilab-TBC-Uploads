clear;
//clc();

// Example 5.3
// Page: 91
printf("Example-5.3  Page no.-91\n\n");

//***Data***//

T_3=1155.2;//[R]
T_2=652.9;//[R]
T_1=787.5;//[R]
p_2=10;//[psia]
p_1=100;//[psia]

//******//
//Here we can write Eq. 5.9 as reported in the book in the form most often seen.
// log(p)=A-B/T
//Where A and B are constants to be determined from the pair of T and p values above.

//we simply write 
//log(10)=A-B/652.9;
//log(100)=A-B/787.5;
// We have to solve the above two simultaneous equations having two vaiables A and B.

M=[1 -1/652.9;1 -1/787.5];
C=[log(10);log(100)];
X=inv(M)*C;
A=X(1);
B=X(2);

// By straightforward algebra we find the values of A and B. Thus, for 1155.2 R we have 
p_3=exp(A-B/T_3);

printf("Vapuor pressure of water at given temperature is %f psia\n\n",p_3);
// p_3=3499 psia. 
printf("It has been reported in the book that from table 5.1 we see that the correct value is 3000 psia. Thus, there is an error of 16%% in the predicted pressure.");

