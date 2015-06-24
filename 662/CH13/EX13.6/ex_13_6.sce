warning('off');
printf("Enter the source file name");
//Enter file name (output.dat) which you have created in the example 13.3
// to see the output 
inpfile=scanf("%s");
printf("Enter the destination file name");
outfile=scanf("%s");
try
   fpin=mopen(inpfile,'r');
   fpout=mopen(outfile,'w');
   if(fpin>0) ,
     //c=mfscanf(fpin,'%c');
     //i=1;
     disp(mtell(fpin));
     mseek(-1,fpin,'end')
     c=mfscanf(fpin,'%c');disp(c);pause;
     while( ~mtell(fpin))
        printf("%c",c);
        c=mfscanf(fpin,'%c');
       // mfprintf(fpout,'%c',c);
      
      // mputl(fpout,c);
      // i=i+1;
     end 
   //  EOF=length(c);i=1;
   //while(i<EOF)
  //     mfprintf(fpout,'%c',c(i));
  //     i=i+1;
  // end
  // mclose(fpout);
   fpout=mopen(outfile,'r');
   while( ~meof(fpout)) 
        c=mfscanf(fpout,'%c');
        printf("%c",c);
   end
   end
   
catch
        //Messages to be displayed when error occured
        printf("Error /Can not open source file.\n");
end
mclose(fpin);
mclose(fpout);