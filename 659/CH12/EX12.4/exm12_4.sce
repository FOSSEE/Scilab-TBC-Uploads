//                     Example12.4
//Write a program to illustatre error handling in file operations.

warning('off');
fp1=mopen('TEST','w');  //Open file in write mode,fp1 is file descriptor
for i=10:10:100
   //write data to the file
   mfprintf(fp1,'%d\n',i);
end
mclose(fp1);
disp("Input file name");
filename='a';
while(filename~=' ')
    filename=scanf("%s");
    //Error handling
    try 
        fp2=mopen(filename,'r');
        if(fp2>0) ,
            break;         //Terminates the loop if file exist or opened
        end
        
    catch
        //Messages to be displayed when error occured
        printf("Can not open file.\n");
        printf("Type file name again.\n");
    end
end
//Code below runs while there is no error
for i=1:20
    number = mfscanf(fp2,"%d");  //Read data from file 'TEST'
    if meof(fp2) then            //Test for end of file
       printf("Ran out of data");
       break;
     else
        printf("%d\n",number);   //prints the data
      end
end
mclose(fp2);