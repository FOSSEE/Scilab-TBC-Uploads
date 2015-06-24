
warning('off');
fstream1=mopen('output1.dat','w');
for k=65:90
    k=ascii(k);
   // printf("%c",k);
    mfprintf(fstream1,'%c',k );
end
mclose(fp);

//Read the 11th character and last character of the file using mseek function
fstream1=mopen('output1.dat','r');
mseek(10,fstream1,'set');
ch=mfscanf(fstream1,"%c");
printf("11th chatracter in the file is %c\n",ch);
mseek(-1,fstream1,'end');
ch=mfscanf(fstream1,"%c");
printf("Last chatracter in the file is %c\n",ch);

mclose(fstream1);