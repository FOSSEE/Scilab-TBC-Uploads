//Programming Example 8.3
//Read several lines of text and determine the average number of characters per line

funcprot(0)
function[]= mainReadAvg()
    //n=number of chars in a given line
    count=0      //number of lines
    Sum=0              //total number of characters
    printf("Enter the text below:")
    //raed a line of text and update the cumulative counters
    n=linecount();
    while ( n>0)
        Sum=Sum+n;
        count=count+1;
        n=linecount();
    end
    avg = Sum/count;            //average number of characters per line
    printf("\nAverage number of character per line: %5.2f", avg)
endfunction

function[count] = linecount()
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
mainReadAvg()

        