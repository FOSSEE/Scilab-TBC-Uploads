//Print the alternate characters of the file output1.dat
warning('off');
fstream1=mopen('output1.dat','r');
for a=1:13
  ch=mfscanf(fstream1,"%c"); //Read data from file output.dat
   printf("%c  ",ch);        //Print the data
   mseek(1,fstream1,'cur'); //Skeep 1 character after every reading
end
mclose(fstream1);