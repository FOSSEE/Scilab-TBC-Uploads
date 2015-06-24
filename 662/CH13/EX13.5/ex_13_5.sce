

warning('off');
//Input numbers in values.dat file
fp=mopen('values.dat','w');
printf("Enter Numbers:")
for k=1:5
    n=scanf("%f");
    mfprintf(fp,'%f\n',n );
end
mclose(fp);
//Calculate the average of numbers of values.dat file
   fpin=mopen('values.dat','r');
   if(fp>0) ,
     sum1=0;count=0;
     while( ~meof(fpin)) 
        val=mfscanf(fpin,'%f');
        sum1=sum1+val;
        count=count+1;
     end 
   end
   mclose(fpin);
count=count-1;
avg=sum1/count; 

//Write the average in the file average.res
fpout=mopen('average.res','w');
    mfprintf(fpout,' %.3f',avg );
mclose(fpout);
//To check the contents of average.res 
fpin=mopen('average.res','r');
  while( ~meof(fpin)) 
        avg=mfscanf(fpin,'%f');
        printf("The average of numbers of file values.dat is %f",avg);
     end 
mclose(fpin);