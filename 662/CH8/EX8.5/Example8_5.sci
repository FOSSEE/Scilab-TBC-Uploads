//Programming Example 8.5
//read several lines of text & determine the average number of characters per line

function[]= mainAvg()
    global Sum        //total number of characters
    Sum=0
    global Lines        //total number of lines
    Lines=0
    printf("Enter the text below")
    //read a line of text and update the cumulative counters
    //n=number of chars in agiven line
    //avg=average number of chars per line
    
    n=linecount();     //expression can not b evaluated inside while,
                       //hence first calculated outside and used within while()
    while ( n>0)
        Sum=Sum+n;
        Lines=Lines+1;
        n=linecount();
    end
    avg = Sum/Lines;            //average number of characters per line
    printf("\nAverage number of character per line: %5.2f", avg)

endfunction

//read a line of text and count the number of charcters
function[count]= linecount()
        count=0
       //as the getchar is used to used with while loop to 
       //read character array which is here replced by read command
       // and the count of characters along with white spaces is made
       // with the help of length().
    
        s=read(%io(1), 1, 1, '(a)');
        if (s == " ") then
            return;        
        else
            count=length(s);
        end
endfunction

//calling routine
mainAvg()