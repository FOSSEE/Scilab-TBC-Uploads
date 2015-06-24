//
//this program is just writing in to a file and will not display anything
warning('off');
fp=mopen('output.dat','w');
for k=65:90
    k=ascii(k);
   // printf("%c",k);
    mfprintf(fp,'%c\n',k );
end
mclose(fp);
