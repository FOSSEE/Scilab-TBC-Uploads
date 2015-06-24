            //Example 13.4
            //Reading a data file
warning('off');
printf("Enter the file name with extension");
//Enter file name (output.dat) which you have created in the example 13.3
// to see the output 
fname=scanf("%s");
try
   fp=mopen(fname,'r');
   if(fp>0) ,
     c=mfscanf(fp,'%c');
     while( ~meof(fp)) 
        printf("%c",c);
        c=mfscanf(fp,'%c');
     end 
   end
catch
        //Messages to be displayed when error occured
        printf("Error /Can not open destination file.\n");
end
mclose(fp);