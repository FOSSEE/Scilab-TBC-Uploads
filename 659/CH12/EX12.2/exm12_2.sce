//                     Example12.2
//A  file named DATA contains a series of integer numbers. Code a program
//to read these numbers and then write all 'odd' numbers to a file to be 
//called ODD and all 'even' numbers to a file to be called EVEN.

warning('off');
//Input numbers in the DATA.txt file
printf("Contents of DATA file\n");
f1=mopen('DATA.txt','wt');
for i=1:30
    number(i)=scanf("%d");
    if(number(i) == -1)
        break;
    end
     mfprintf(f1,'%d\n',number(i));
end
mclose(f1);

f2=mopen('ODD.txt','wt');
f3=mopen('EVEN.txt','wt');
f1=mopen('DATA.txt','rt');
//Read numbers from DATA file
EOF=length(number);
i=1;
even=0;
odd=0;
while (i<EOF)
    [n,number]=mfscanf(f1," %d")
     if(pmodulo(number,2)==0)
        mfprintf(f3,'%d\n',number);
        even=even+1;
    else
        mfprintf(f2,'%d\n',number);
        odd=odd+1;
    end
    i=i+1;
end
mclose(f1);
mclose(f2);
mclose(f3);
//Write odd numbers in the ODD.txt file
f2=mopen('ODD.txt','rt');
printf("\nContents of ODD file\n");
i=1;
while (i<=odd)
    [n,number]=mfscanf(f2,"%d")
    printf("%4d",number); 
    i=i+1;   
end
//Write even numbers in the EVEN.txt file
f3=mopen('EVEN.txt','rt');
printf("\nContents of EVEN file\n");
i=1;
while (i<=even)
    [n,number]=mfscanf(f3,"%d")
    printf("%4d",number); 
    i=i+1;   
end
//close the files
mclose(f2);
mclose(f3);
