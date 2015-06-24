warning('off');
fp=mopen('lines.dat','rb');
count=0;
ch=mfscanf(fp,"%c");
while(~meof(fp))
    count=count+1;
    ch=mfscanf(fp,"%c");
end
mclose(fp);
printf("Count= %d\n",count);