//example 3.10 
// this program needs kmappos.sci and noof.sci

k=[0 0 0 0;0 0 0 1; 1 1 1 1;1 1 1 1];
disp("The minimal expression of Y from the following Kmap is :');
kmap(k);
disp('After complimenting and simplifying the Krarnugh map we get Y =:');
k=[1 1 1 1;1 1 1 0; 0 0 0 0;0 0 0 0 ];
kmap(k); //calling the Kmap function