//                 Csae study: Chapter-8, Page No:253
//                     1.Counting words in a text

characters=0;words=0;lines1=0;
printf("     KEY IN THE TEXT.\n");
printf("GIVE ONE SPACE AFTER EACH WORD.\n");
printf("WHEN COMPLETED,ENTER end\n");

l=' ';
while(l~='end')
     l=read(%io(1),1,1,'(a)'); //Reading a line of text
     if(l=='end') then
         break;
     end
     line=[ascii(l)];         //Array of ascii values of line l
     len=length(line);        //compute length of line
     for i=1:len
        //ascii value of ' '(i.e.space) is 32
        if(line(i)==32) then
            words=words+1;      //Count the number of words
        end
     end
     lines1=lines1+1;           //Count the number of lines 
     characters=characters+len; //Count the number of characters
end
//Printing results
printf("Number of lines = %d\n",lines1);
//Number of lines are added to words because last word of each line remains-
//uncounted as words are incremented at the occurence of space.
printf("Number of words = %d\n",words+lines1);
printf("Number of characters = %d\n",characters);