disp('finding the number of three-letter words using only the given six letters(A,B,C,D,E,F) without repetition')
n=6;  //total number of letters
l1=n;  //number of ways in which first letter of the word can be chosen
l2=n-1; //number of ways in which second letter of the word can be chosen
l3= n-2; //number of ways in which third letter can be chosen
k=l1*l2*l3;
disp(k,'number of three-letter words  possible')