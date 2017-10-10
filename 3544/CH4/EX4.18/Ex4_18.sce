// Simple message digest

n = 7391743                         //Message
printf("Original number is %d\n",n)

n_str = string(n)                   //Conversion of integer to string for easy access
l = length(n_str)                   
n_v = strsplit(n_str,1:l-1)         //String to vector of characters

d = 1
for i=1:l                                       
    d = d * ( ascii(n_v(i:i)) - ascii('0'))        //
    d = modulo(d,10)
    i = i+1
end

printf("Message digest is %d\n",d)
