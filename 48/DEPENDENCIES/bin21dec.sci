//bin21dec is a function whcih converts any binary number given to it will output its equivalent decimal number
//pass the binary number as an argument to the function
// For eg:bin21decimal(1010)
//Will give an output of 10

function [temp]=bin21dec(bin)
    i=1;w=1;

    temp1=floor(bin);                                //separating integer part from the given number
    temp2=modulo(bin,1);                             //separating decimal part from the given number
    temp2=temp2*10^3;                                //converting decimal value to interger for convenience

    while(temp1>0)                                  //storing each integer digit in vector for convenience
        p(i)=modulo(temp1,10);
        temp1=floor(temp1/10);
        i=i+1;
    end

    while(temp2>0)                                  //storing each integer digit in vector for convenience
        q(w)=modulo(temp2,2);
        temp2=(temp2/10);
        temp2=floor(temp2);
        w=w+1;
    end

    temp1=0;                                        //clearing the temporary variable 'temp2'

    for i=1:length(p)                              //checking whether it is binary or not.
        if(p(i)>1) then
            disp('not a binary number');
            abort; 
        end
    end

    for i=1:length(p)                               //multipliying the bits of integer part with their position values and adding 
        temp1=temp1+(p(i)*2^(i-1));
    end

    temp2=0;                                        //clearing the temporary variable 'temp2'

    for z=1:w-1                                     //multipliying the bits of decimal part with their position values and adding 
        temp2=temp2+(q(z)*2^(-1*(4-z)));
    end

    temp=temp1+temp2;                              //finally adding both the integer and decimal parts to get total output.
endfunction