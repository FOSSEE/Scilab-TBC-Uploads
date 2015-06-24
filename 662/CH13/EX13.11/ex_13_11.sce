warning('off');
fp=mopen('lines.dat','w');
for i=1:100
    mfprintf(fp,'\n' );
end
mclose(fp);