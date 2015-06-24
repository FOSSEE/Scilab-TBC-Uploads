warning('off');
fp=mopen('binval.dat','wb');
 for i=10001:11000
   // write4b('binval.dat',10001:11000);
    mfprintf(fp,'%d\n',i );
end
mclose(fp);


fp=mopen('binval.dat','rb');
count=0;
ch=mfscanf(fp,"%d");
while(~meof(fp))
    count=count+1;
    ch=mfscanf(fp,"%d");
end
mclose(fp);
printf("Count= %d\n",count);