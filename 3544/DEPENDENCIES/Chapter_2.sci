
//////////////////////////////////////
//          Caesar cipher           //
//////////////////////////////////////


//Generalised Caesar cipher encryption
function [ct] = encrypt_caesar_general(pt,key)
    a = ascii('A')
    l = length(pt)
    ct = zeros(l)
    
    for i =1:l
        if isletter(part(pt,i:i)) then
            ct(i) = a + modulo( ascii(part(pt,i:i))+key-a, 26 ) 
        else
            ct(i) = ascii( part(pt,i:i) )
        end
    end
    ct = char(ct)
    ct = strcat(ct)
endfunction

//Caesar cipher encryption (key = 3  always)
function [ct] = encrypt_caesar(pt)
    ct = encrypt_caesar_general(pt,3)
endfunction


//Generalised Caesar cipher decryption
function [pt] = decrypt_caesar_general(ct,key)
    a = ascii('A')
    key = 26-key
    l = length(ct)
    pt = zeros(l)
    
    for i =1:l
        if isletter(part(ct,i:i)) then
            pt(i) = a + modulo( ascii(part(ct,i:i))+key-a, 26 )  
        else
            pt(i) = ascii(part(ct,i:i));        
        end
    end
    pt = char(pt)
    pt = strcat(pt)
endfunction


//Caesar cipher decryption (key = 3  always)
function [pt] = decrypt_caesar(ct)
    pt = decrypt_caesar_general(ct,3)
endfunction



//////////////////////////////////////
//         Playfair cipher          //
//////////////////////////////////////



//func to remove spaces from a string
function [mat]=remove_spaces(str)
    mat=[]
    k=1
    for i=1:length(str)
        if ~isletter(part(str,i:i)) then
            continue
        end
        mat(k,1) = part(str,i:i)
        k=k+1
    end
    mat = strcat(mat)
endfunction


//func to substitute I for J
function [mat]=i_to_j(str)
    str = remove_spaces(str)
    mat=[]
    k=1
    for i=1:length(str)
        mat(k,1) = part(str,i:i)
        if mat(k,1)=='J' then
            mat(k,1) = 'I'
        end
        k = k+1
    end
    mat = strcat(mat)
endfunction

//func to insert X between repeating characters
function [mat]=handle_duplicates(str)
    mat = [] 
    l = length(str)
    k = 1
    
    for i=1:l
        if i>1 & part(str,i:i)==part(str,i-1:i-1) then
            mat(k,1)='X'
            k=k+1
        end
        mat(k,1) = part(str,i:i) 
        k = k+1
    end    
    mat = strcat(mat)
endfunction
 
//Matrix creation and population for Playfair cipher
//func to populate playfair matrix
function [mat]=playfair_matrix(key)
    
    key = i_to_j(key)
    a = ascii('A')
    i = ascii('I')
    j = ascii('J')
    row = 5
    col = 5
    visited = zeros(26,1);
    mat = ones(row,col);
    
    len = length(key)
    
    li=1
    k=1
    
    for m=1:row
        for n=1:col
            while li<=len & visited(ascii(part(key,li:li)) - ascii('A')+1,1)~=0,
                li=li+1
                if part(key,li:li)=='I' & visited(j-a+1)==1 | part(key,li:li)=='J' & visited(i-a+1)==1 then
                    li = li+1
                end
            end
            while k<=26 & visited(k,1)~=0
                k=k+1
                if k==i-a+1 & visited(j-a+1)==1 | k==j-a+1 & visited(i-a+1)==1 then
                    k = k+1
                end
            end
            if li<=len then
                mat(m,n) = ascii(part(key,li:li))
                visited(ascii(part(key,li:li))-a+1,1) = 1
            else
                mat(m,n) = k+ascii('A')-1    
                visited(k,1) = 1
            end
                    
        end
    end

endfunction

//func to check and convert plaintext to suitable format for encipherment using playfair cipher
function [mat]=playfair_pt(pt)
    mat = i_to_j(pt)
    mat = handle_duplicates(mat)
endfunction

function [mat]=digram_array(pt)
    k = 1
    l = length(pt)
    for i=1:l
        if modulo(i,2)==0 then
            continue
        end
        mat(k,1) = part(pt,i:i)
        i=i+1
        if i>l then
            mat(k,2) = 'X'
        else
            mat(k,2) = part(pt,i:i) 
        end
        k=k+1
    end
endfunction

function []=print_matrix(mat,new_line)
    [r,c] = size(mat)
    t = type(mat)

    for i=1:r
        for j=1:c
            if  t==[1] then         // real numbers return 1, characters return 10
                printf("%c ",ascii(mat(i,j)))
            else
                printf("%c ",mat(i,j))
            end
        end
        printf("   ")
        if new_line~=0 then
            printf("\n")
        end
    end
endfunction

function [r,c]=find_letter(key_mat,a)
    [row,col] = size(key_mat)
    r = 0
    c = 0
    for i=1:row
        for j=1:col
            if ascii(key_mat(i,j))==a then
                r=i
                c=j
                break
            end
        end
    end
endfunction


function [mat]=encrypt_playfair(pt_mat,key_mat)

    [row,col] = size(pt_mat)
    mat = []

    for i=1:row
        a = pt_mat(i,1)
        b = pt_mat(i,2)
        [r_a,c_a] = find_letter(key_mat,a)
        [r_b,c_b] = find_letter(key_mat,b)
        
        if r_a==r_b then
            c_a = modulo(c_a,5)+1
            c_b = modulo(c_b,5)+1
        elseif c_a==c_b then
            r_a = modulo(r_a,5)+1
            r_b = modulo(r_b,5)+1
        else
            temp = c_a
            c_a = c_b
            c_b = temp
        end
        mat(i,1) = ascii(key_mat(r_a,c_a))
        mat(i,2) = ascii(key_mat(r_b,c_b))        
        
    end
endfunction


//////////////////////////////////////
//      Transposition cipher        //
//////////////////////////////////////

function [mat]=message_rectangle(str,col)
    l = length(str)
    row = l/6
    if modulo(l,6)>0 then
        row=row+1
    end
    //remove whitespace and non-alphabets from string
    str = remove_spaces(str)
    //Conversion of plaintext into a message table
    mat = []
    k=1
    for i=1:row
        for j=1:col
            if k>l then
                break
            end
            mat(i,j) = part(str,k:k)
            k=k+1
        end
    end
endfunction

//////////////////////////////////////
//   Diffie-Hellman Key Exchange    //
//////////////////////////////////////

function [key]=diffie_key(g,p,n)
    key = modulo(g^p,n)
endfunction
