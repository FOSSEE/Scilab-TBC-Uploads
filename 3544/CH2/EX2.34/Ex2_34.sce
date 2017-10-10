//////////////////////////////////////////
//										//
//(a) Encrytion scheme of hill cipher   //
//										//
//////////////////////////////////////////


//PLaintext 
pt = "CAT"

disp("Plaintext: ")
disp(pt)

l = length(pt)
pt = strsplit(pt)

a = ascii("A")
pt_mat = []

//Taking A=0,B=1,C=2,etc.
for i=1:l
    pt_mat(i,1)=ascii(pt(i,1))-a
end

disp("Plaintext matrix:")
disp(pt_mat)

//Key matrix 
key_mat = [6 24 1; 13 16 10;20 17 15]
disp("Encryption Key matrix:")
disp(key_mat)

//ciphertext matrix
ct_mat = key_mat * pt_mat

disp("Product: ")
disp(ct_mat)
[r,c]=size(ct_mat)

//Taking mod for correct conversion
for i=1:r
    ct_mat(i,1) = modulo(ct_mat(i,1),26)
end

disp("Ciphertext matrix: ")
disp(ct_mat)

disp("Ciphertext: ")

//Conversion of code to letters
ct=[]
for i=1:r
    ct(i,1) = ascii(ct_mat(i,1)+a)
end
ct = strcat(ct)
disp(ct)



//////////////////////////////////////////
//										//
//(b) Decrytion scheme of hill cipher   //
//										//
//////////////////////////////////////////

//Ciphertext 
disp("Ciphertext: ")
disp(ct)

l = length(ct)
ct = strsplit(ct)

a = ascii("A")
ct_mat = []

//Taking A=0,B=1,C=2,etc.
for i=1:l
    ct_mat(i,1)=ascii(ct(i,1))-a
end

disp("Ciphertext matrix:")
disp(ct_mat)

//Key matrix for decryption (inverse of encryption key matrix)
key_mat = [8 5 10; 21 8 21;21 12 8]
disp("Decryption Key matrix:")
disp(key_mat)

//ciphertext matrix
pt_mat = key_mat * ct_mat

disp("Product: ")
disp(pt_mat)
[r,c]=size(pt_mat)

//Taking mod for correct conversion
for i=1:r
    pt_mat(i,1) = modulo(pt_mat(i,1),26)
end

disp("Plaintext matrix: ")
disp(pt_mat)

disp("Plaintext: ")

//Conversion of code to letters
pt=[]
for i=1:r
    pt(i,1) = ascii(pt_mat(i,1)+a)
end
pt = strcat(pt)
disp(pt)
