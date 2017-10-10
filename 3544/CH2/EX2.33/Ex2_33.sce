//Practice example for playfair cipher

// Move scilab to current file directory
[u,t,n] = file()
n = strcat(n)
file_name = basename(n)+fileext(n)
file_name = strcat(file_name)
ind=strindex(n,file_name)
path = part(n,1:ind-1)
chdir(path)

exec("Chapter_2.sci",-1)

//Playfair cipher key
key = "HARSH"
disp("Original plaintext:")
pt = "MY NAME IS JUI KAHATE. I AM HARSHU''S SISTER."
disp(pt)

//using functions from dependency file to reformat the input

pt = playfair_pt(pt)            // substituting J to I and handling duplicates
pt_digram = digram_array(pt)       // converting to digrams

disp("Plaintext message broken down into pair of elements:")
print_matrix(pt_digram,0)
disp("")
a = ascii('A')


//Calling function to calculate the playfair matrix from the dependency file
key_matrix = playfair_matrix(key);

// mat contains ascii values of characters of playfair matrix
//Use "disp(mat)" to verify this
disp("Playfair Cipher Key matrix: ")

print_matrix(key_matrix,1)

//disp(pt_matrix)
ct_mat = encrypt_playfair(pt_digram,key_matrix)

disp("Playfair ciphertext:")
print_matrix(ct_mat,0)