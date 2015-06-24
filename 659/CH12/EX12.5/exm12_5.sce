//                    Example12.5
//Write a program that uses function ftell(mtell) and fseek(mseek).

warning('off');
//Open file 'RANDOM' in write mode,fp is file descriptor
fp=mopen('RANDOM','w'); 
c=read(%io(1),1,1,'(a)');
mfprintf(fp,'%s',c);    //write data to the file
printf("Number of characters entered = %d\n",mtell(fp));
mclose(fp);

//Open file 'RANDOM' in read mode
fp=mopen('RANDOM','r');
n=0;
while(meof(fp)==0)
//n is the offset from origin in number of bytes.
//The new position is at the signed distance given by n bytes from the beginning
    mseek(n,fp,'set');
    //Print the chracter  and its postion
    printf("Position of %c is %d\n",ascii(mget(1,'c',fp)),mtell(fp));
    n=n+5;
end
n=0;     //Initial offset
while(mtell(fp)>1)
 //New position is at the signed distance given by n bytes from the end
      mseek(n,fp,'end');
      //Print the characters from the end
      printf("%c",(ascii(mget(1,'c',fp))));
      n=n-1;
end
mclose(fp);
