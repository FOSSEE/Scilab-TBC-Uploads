//function abc accepting only three simple variables given the function has 
 //only fixed sace requirement..
 function[]=abc(a,b,c)
     x= a+b+c*c+(a+b-c)/(a+b)+4.00;
     disp(x);
     funcprot(0);
 endfunction
 ....//calling routine
 a=[1],b=[2],c=[3]
 abc(a,b,c)
