//dec21bin is a function whcih converts any decimal number given to it will output its equivalent binary number
//pass the decimal number as an argument to the function
// For eg:dec21bin(10)
//Will give an output of 1010

function [temp]=dec21bin(dec)
    temp2=floor(dec);                                //separating integer part from the given number
    temp4=modulo(dec,1);                             //separating decimal part from the given number

    format('v',18);                                  //changing the default precision to 18

    i=1;p=0;x=1;                                        //flag bits

    while(temp2>0)                                  //storing each integer digit in vector for convenience
        p(i)=(modulo(floor(temp2),2))
        temp2=floor(temp2)/2;
        i=i+1;
    end

    temp2=0;                                        //clearing the temporary variable 'temp2'

    for j=1:length(p)                              //multipliying the bits of integer part with their position values and adding 
        temp2=temp2+(p(j)*10^(j-1));
    end

    while(temp4~=0)                                  //storing each integer digit in vector for convenience
        temp4=temp4*2;
        d(x)=floor(temp4);
        x=x+1;
        temp4=modulo(temp4,1);
    end 

    temp5=0;                                        //clearing the temporary variable 'temp2'
    
    for j=1:x-1                              //multipliying the bits of decimal part with their position values and adding 
        temp5=temp5+(10^(-1*j)*d(j))
    end

    temp=temp2+temp5;                                          //finally adding both the integer and decimal parts to get total output.
endfunction